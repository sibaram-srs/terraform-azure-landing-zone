# resource "azurerm_resource_group" "rg" {
#   for_each = var.resource_groups
#   name     = each.value.name
#   location = each.value.location
# }


resource "azurerm_resource_group" "rg" {
  name     = "sr-rg"
  location = "West Europe"
}