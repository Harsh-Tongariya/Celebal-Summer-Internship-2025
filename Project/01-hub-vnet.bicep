
param location string = resourceGroup().location

resource hubVnet 'Microsoft.Network/virtualNetworks@2022-01-01' = {
  name: 'hub-vnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'AzureFirewallSubnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
      {
        name: 'ApplicationGatewaySubnet'
        properties: {
          addressPrefix: '10.0.2.0/24'
        }
      }
      {
        name: 'AzureBastionSubnet'
        properties: {
          addressPrefix: '10.0.3.0/24'
        }
      }
      {
        name: 'GatewaySubnet'
        properties: {
          addressPrefix: '10.0.4.0/24'
        }
      }
      {
        name: 'DNSSubnet'
        properties: {
          addressPrefix: '10.0.5.0/24'
        }
      }
    ]
  }
}
