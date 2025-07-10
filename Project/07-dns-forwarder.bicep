
param location string = resourceGroup().location

resource dnsVM 'Microsoft.Compute/virtualMachines@2022-01-01' = {
  name: 'dns-forwarder'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B1s'
    }
    osProfile: {
      computerName: 'dnsvm'
      adminUsername: 'azureuser'
      adminPassword: '<REPLACE-WITH-PASSWORD>'
    }
    storageProfile: {
      imageReference: {
        publisher: 'Canonical'
        offer: 'UbuntuServer'
        sku: '18.04-LTS'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: '<REPLACE-WITH-NIC-ID>'
        }
      ]
    }
  }
}
