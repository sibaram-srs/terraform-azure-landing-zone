
nsg_name = {
  nsg1 = {
    name                = "vm-nsg"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"


  }
}

nsg_association = {
  nsga1 = {
    # Parent module ya output se pass karna
    subnet_id = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/sr-pod-rg/providers/Microsoft.Network/virtualNetworks/sr-spoke-vnet/subnets/vm-subnet"
    nsg_key   = "nsg1"
  }
}
