
param location string = resourceGroup().location

resource spoke2 'Microsoft.Network/virtualNetworks@2022-01-01' = {
  name: 'spoke2-storage-vnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.2.0.0/16']
    }
    subnets: [
      {
        name: 'storage-subnet'
        properties: {
          addressPrefix: '10.2.1.0/24'
        }
      }
    ]
  }
}
