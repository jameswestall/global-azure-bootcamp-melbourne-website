targetScope = 'subscription'

param testTime string = utcNow()

param location string = deployment().location

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: '${uniqueString(testTime)}-brm-test-rg'
  location: location
}

module staticWebApp '../main.bicep' = {
  scope: resourceGroup
  name: 'static-web-app-test-${uniqueString(testTime)}'
  params:{
    name: '${uniqueString(testTime)}-swa'
    location: location
  }
}
