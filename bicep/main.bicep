targetScope = 'subscription'

param location string = deployment().location

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'gabc-melbourne-website-rg'
  location: location
}

module staticWebApp'modules/web/staticapps/main.bicep' = {
  scope: resourceGroup
  name: 'gabc-static-web-app'
  params:{
    name: 'gabc-static-web-app'
    location: location
  }
}
