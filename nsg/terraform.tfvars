nsg_name            = "vm-nsg"
location            = "West Europe"
resource_group_name = "srshiv-rg"

# Parent module ya output se pass karna
subnet_id = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/srshiv-rg/providers/Microsoft.Network/virtualNetworks/sr-spoke-vnet/subnets/vm-subnet"