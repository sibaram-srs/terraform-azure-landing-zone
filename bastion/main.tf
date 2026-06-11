resource "azurerm_public_ip" "bastion_pip" {
  for_each            = var.bastion_pip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"

}

resource "azurerm_bastion_host" "bastion" {

  for_each            = var.bastion_host
  name                = each.value.host_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku = "Standard"

  ip_configuration {
    name                 = each.value.config_name
    subnet_id            = each.value.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion_pip[each.value.pub_key].id
  }
}