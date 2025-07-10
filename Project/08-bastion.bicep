
param location string = resourceGroup().location

resource bastion 'Microsoft.Network/bastionHosts@2022-01-01' = {
  name: 'hub-bastion'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'bastion-ipconfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'hub-vnet', 'AzureBastionSubnet')
          }
          publicIPAddress: {
            id: '<REPLACE-WITH-PUBLIC-IP-ID>'
          }
        }
      }
    ]
  }
}
