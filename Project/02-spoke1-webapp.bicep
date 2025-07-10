
param location string = resourceGroup().location

resource spoke1 'Microsoft.Network/virtualNetworks@2022-01-01' = {
  name: 'spoke1-webapp-vnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.1.0.0/16']
    }
    subnets: [
      {
        name: 'webapp-subnet'
        properties: {
          addressPrefix: '10.1.1.0/24'
        }
      }
    ]
  }
}
