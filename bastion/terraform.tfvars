
bastion_pip = {
  bastion_pip_1 = {
    name                = "sr-bastion-pip"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"

  }
}

bastion_host = {
  bastion_host_1 = {
    host_name           = "sr-bastion"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"
    subnet_id           = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/sr-pod-rg/providers/Microsoft.Network/virtualNetworks/sr-hub-vnet/subnets/AzureBastionSubnet"
    pub_key             = "bastion_pip_1"
    config_name         = "bastion-ip-config"
  }
}