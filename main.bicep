@description('Storage Account type')
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'

@description('Location for all resources')
param location string = resourceGroup().location

var storageAccountName1 = 'store1${uniqueString(resourceGroup().id)}'
var storageAccountName2 = 'store2${uniqueString(resourceGroup().id)}'
var storageAccountName3 = 'store3${uniqueString(resourceGroup().id)}'

resource storageAccount1 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName1
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

resource storageAccount2 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName2
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

resource storageAccount3 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName3
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

output storageAccountName1 string = storageAccount1.name
output storageAccountName2 string = storageAccount2.name
output storageAccountName3 string = storageAccount3.name
