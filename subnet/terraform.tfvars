subnets = {
  snet1 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "srshiv-rg"
    virtual_network_name = "sr-hub-vnet"
    address_prefixes     = ["10.1.1.0/24"]
  }
  snet2 = {
    name                 = "vm-subnet"
    resource_group_name  = "srshiv-rg"
    virtual_network_name = "sr-spoke-vnet"
    address_prefixes     = ["10.5.1.0/24"]
  }
}