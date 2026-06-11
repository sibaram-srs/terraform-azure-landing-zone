output "storage_account_names" {
  value = {
    for k, stg in azurerm_storage_account.storage :
    k => stg.name
  }
}