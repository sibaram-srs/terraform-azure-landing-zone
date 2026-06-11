# output "resource_group_names" {
#   value = {
#     for key, rg in azurerm_resource_group.rg :
#     key => rg.name
#   }
# }

# output "rg-group" {
#   value = azurerm_resource_group.rg1
# }

output "rg-group" {
  value = azurerm_resource_group.rg.name
}

output "rg-group-id" {
  value = azurerm_resource_group.rg.id
}