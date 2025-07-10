
param location string = resourceGroup().location

resource firewall 'Microsoft.Network/azureFirewalls@2022-01-01' = {
  name: 'hub-firewall'
  location: location
  properties: {
    sku: {
      name: 'AZFW_VNet'
      tier: 'Standard'
    }
    ipConfigurations: [
      {
        name: 'fw-ipconfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'hub-vnet', 'AzureFirewallSubnet')
          }
          publicIPAddress: {
            id: '<REPLACE-WITH-PUBLIC-IP-ID>'
          }
        }
      }
    ]
  }
}
