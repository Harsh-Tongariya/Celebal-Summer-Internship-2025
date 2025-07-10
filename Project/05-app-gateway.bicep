
param location string = resourceGroup().location

resource appGw 'Microsoft.Network/applicationGateways@2022-01-01' = {
  name: 'hub-appgw'
  location: location
  properties: {
    sku: {
      name: 'WAF_v2'
      tier: 'WAF_v2'
      capacity: 2
    }
    gatewayIPConfigurations: [
      {
        name: 'appGwIpConfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'hub-vnet', 'ApplicationGatewaySubnet')
          }
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'appGwFrontendPublic'
        properties: {
          publicIPAddress: {
            id: '<REPLACE-WITH-PUBLIC-IP-ID>'
          }
        }
      },
      {
        name: 'appGwFrontendPrivate'
        properties: {
          privateIPAddress: '10.0.2.10'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'hub-vnet', 'ApplicationGatewaySubnet')
          }
        }
      }
    ]
  }
}
