
param location string = resourceGroup().location

resource vpnGw 'Microsoft.Network/virtualNetworkGateways@2022-01-01' = {
  name: 'hub-vpn-gateway'
  location: location
  properties: {
    gatewayType: 'Vpn'
    vpnType: 'RouteBased'
    enableBgp: false
    ipConfigurations: [
      {
        name: 'vpngw-ipconfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'hub-vnet', 'GatewaySubnet')
          }
          publicIPAddress: {
            id: '<REPLACE-WITH-PUBLIC-IP-ID>'
          }
        }
      }
    ]
    sku: {
      name: 'VpnGw1'
      tier: 'VpnGw1'
    }
  }
}
