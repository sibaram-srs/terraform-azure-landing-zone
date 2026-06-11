output "bastion_id" {
  value = {
    for k, v in azurerm_bastion_host.bastion :
    k => v.id
  }
}

output "bastion_public_ip" {
  value = {
    for k, v in azurerm_public_ip.bastion_pip :
    k => v.ip_address
  }
}