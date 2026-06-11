vnets = {
  vnet1 = {
    name                = "sr-hub-vnet"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"
    address_space       = ["10.4.0.0/16"]
  }
  vnet2 = {
    name                = "sr-spoke-vnet"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"
    address_space       = ["10.5.0.0/16"]
  }
}