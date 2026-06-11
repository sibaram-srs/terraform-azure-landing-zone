output "subnet_names" {
  value = {
    for k, snet in azurerm_subnet.subnet :
    k => snet.id
  }
}
