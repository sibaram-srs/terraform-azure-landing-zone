output "vnets_names" {
  value = {
    for k, vnet in azurerm_virtual_network.vnet :
    k => vnet.name
  }
}

output "vnets_id" {
  value = {
    for k, vnets_id in azurerm_virtual_network.vnet :
    k => vnets_id.id
  }
}