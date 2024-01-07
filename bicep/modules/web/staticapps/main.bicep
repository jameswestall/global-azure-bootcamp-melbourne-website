metadata name = 'Static Web Apps Module'
metadata description = 'A Bicep module which deploys a static web app. '
metadata owner = 'jameswestall'

@description('The Azure region which the Static Web App will be deployed to.')
param location string

@description(' The name of the Static Web App.')
param name string

@description('Optional. The SKU of the Static Web App. Defaults to Free Tier.')
param sku object = {
  name: 'Free'
  tier: 'Free'
}

@description('Optional. Resource tags.')
@metadata({
  doc: 'https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources?tabs=bicep#arm-templates'
  example: {
    tagKey: 'string'
  }
})
param tags object = {}

@description('Optional. Specify the type of resource lock.')
@allowed([
  'NotSpecified'
  'ReadOnly'
  'CanNotDelete'
])
param resourcelock string = 'NotSpecified'

var lockName = toLower('${staticWebApp.name}-${resourcelock}-lck')

resource staticWebApp 'Microsoft.Web/staticSites@2023-01-01' = {
  name: name
  location: location
  tags: tags
  sku: sku
  properties: {
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'None'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}


resource lock 'Microsoft.Authorization/locks@2020-05-01' = if (resourcelock != 'NotSpecified') {
  scope: staticWebApp
  name: lockName
  properties: {
    level: resourcelock
    notes: (resourcelock == 'CanNotDelete') ? 'Cannot delete resource or child resources.' : 'Cannot modify the resource or child resources.'
  }
}

@description('The name of the deployed staticWebApp service.')
output name string = staticWebApp.name

@description('The resource ID of the deployed staticWebApp service.')
output resourceId string = staticWebApp.id
