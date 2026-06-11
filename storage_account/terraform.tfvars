storage_accounts = {
  stg1 = {
    name                     = "srstgpod01"
    resource_group_name      = "sr-pod-rg"
    location                 = "westeurope"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}