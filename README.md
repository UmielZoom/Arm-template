# Azure Storage Accounts Template

## What does this do?

This template creates **3 storage accounts** in Azure.

## Storage Accounts Created

| Name | Type | Purpose |
|------|------|---------|
| store1-[unique-id] | StorageV2 | General purpose storage |
| store2-[unique-id] | StorageV2 | General purpose storage |
| store3-[unique-id] | StorageV2 | General purpose storage |

## Files Included

| File | Description |
|------|-------------|
| `azuredeploy.json` | ARM template (JSON format) |
| `main.bicep` | Bicep template (human-readable format) |

## How to Deploy

### Using Azure CLI (Bicep)

```bash
az deployment group create \
  --resource-group <your-resource-group> \
  --template-file main.bicep
```

### Using Azure CLI (ARM)

```bash
az deployment group create \
  --resource-group <your-resource-group> \
  --template-file azuredeploy.json
```

### Using PowerShell

```powershell
New-AzResourceGroupDeployment `
  -ResourceGroupName <your-resource-group> `
  -TemplateFile main.bicep
```

## Parameters

| Parameter | Default | Options | Description |
|-----------|---------|---------|-------------|
| storageAccountType | Standard_LRS | Standard_LRS, Standard_GRS, Standard_ZRS, Premium_LRS | Replication type |
| location | Resource group location | Any Azure region | Where to create the accounts |

## Example with Custom Parameters

```bash
az deployment group create \
  --resource-group my-rg \
  --template-file main.bicep \
  --parameters storageAccountType=Standard_GRS location=eastus
```

## Outputs

After deployment, you'll get the names of all 3 storage accounts:

- `storageAccountName1`
- `storageAccountName2`
- `storageAccountName3`
