param vNetPrefix string
param location string = resourceGroup().location
//param vNetName string = 'vnet-${uniqueString(resourceGroup().id)}'
param vNetName string = '${vNetPrefix}-vnet'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: vNetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16' // This should be replaced with the actual vNet prefix if different
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: '10.0.0.0/24' // This should be replaced with the actual subnet prefix if different
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: '10.0.1.0/24' // This should be replaced with the actual subnet prefix if different
        }
      }
    ]
  }
}
