output "vnets_names" {
  value = {
    for k, vnet in azurerm_virtual_network.vnet :
    k => vnet.name
  }
}