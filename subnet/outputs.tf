output "subnet_names" {
  value = {
    for k, snet in azurerm_subnet.subnet :
    k => snet.name
  }
}

output "subnet_id" {
  value = {
    for k, snetid in azurerm_subnet.subnet :
    k => snetid.id
  }
}