hub_peering = {
  hub_peering_1 = {
    name                      = "hub-to-spoke"
    resource_group_name       = "sr-pod-rg"
    virtual_network_name      = "sr-hub-vnet"
    remote_virtual_network_id = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/sr-pod-rg/providers/Microsoft.Network/virtualNetworks/sr-spoke-vnet"
  }
}


spoke_peering = {
  spoke_peering_1 = {
    name                      = "spoke-to-hub"
    resource_group_name       = "sr-pod-rg"
    virtual_network_name      = "sr-spoke-vnet"
    remote_virtual_network_id = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/sr-pod-rg/providers/Microsoft.Network/virtualNetworks/sr-hub-vnet"
  }
}