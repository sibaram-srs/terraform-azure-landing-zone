resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  for_each                     = var.hub_peering
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  virtual_network_name         = each.value.virtual_network_name
  remote_virtual_network_id    = each.value.remote_virtual_network_id
  allow_virtual_network_access = true

}

resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  for_each                     = var.spoke_peering
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  virtual_network_name         = each.value.virtual_network_name
  remote_virtual_network_id    = each.value.remote_virtual_network_id
  allow_virtual_network_access = true

}