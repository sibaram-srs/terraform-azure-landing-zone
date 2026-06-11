output "resource_group_names" {
  value = {
    for key, rg in azurerm_resource_group.rg :
    key => rg.name
  }
}

# output "resource_group_name" {
#   value = values(azurerm_resource_group.rg)[*].name
# }
