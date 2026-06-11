output "nic_id" {
  value = {
    for k, nic in azurerm_network_interface.nic :
    k => nic.id
  }
}