

VM = {
  VM1 = {
    vm_name             = "sr-spoke-linux-vm"
    location            = "West Europe"
    resource_group_name = "sr-pod-rg"
    vm_size             = "Standard_B2ls_v2"
    admin_username      = "azureadmin"
    admin_password      = "Password@123456"
    nic_id              = "/subscriptions/5377d8e3-d591-444c-8728-5bbf7bc30659/resourceGroups/sr-pod-rg/providers/Microsoft.Network/networkInterfaces/vm-nic"
  }
}