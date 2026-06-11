📘 Azure Landing Zone - Terraform Project
🚀 Overview

This project provisions a basic Azure Landing Zone architecture using Terraform. It includes core networking and compute components such as Virtual Machines, Network Security Groups, Bastion Host, and their associations using modular and scalable for_each based design.

🏗️ Architecture Components

This Terraform setup deploys:

🖥️ Linux Virtual Machines
🌐 Virtual Network (assumed existing or separate module)
🔐 Network Security Groups (NSGs)
🔗 NSG Subnet Associations
🛡️ Azure Bastion Host
🌍 Public IP for Bastion
⚙️ Dynamic resource creation using for_each

📂 Project Structure

AZ_Landing_Zone/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── provider.tf
└── README.md
⚙️ Key Terraform Concepts Used
🔁 1. for_each (Dynamic Infrastructure)

Used for scalable resource creation:

Multiple VMs
Multiple NSGs
Multiple Public IPs
Bastion Hosts
Associations

Example:

resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.VM
}
🔐 2. Network Security Groups (NSG)

NSGs are created dynamically and include rules:

Allow SSH (22)
Allow HTTP (80)
🔗 3. NSG Association

Each NSG is associated with a subnet using:

resource "azurerm_subnet_network_security_group_association"
🛡️ 4. Azure Bastion Host

Secure VM access without public IP on VM:

Requires Public IP (Standard SKU)
Uses AzureBastionSubnet
🖥️ 5. Linux Virtual Machines
Ubuntu 22.04 LTS
Password authentication enabled
NIC-based networking
Dynamic VM creation using for_each
📥 Input Variables Example
🖥️ VM Variable
VM = {
  vm1 = {
    vm_name            = "test-vm"
    location           = "West Europe"
    resource_group_name= "rg-name"
    vm_size            = "Standard_B1s"
    admin_username     = "azureuser"
    admin_password     = "Password@123"
    nic_id             = "/subscriptions/.../nic-id"
  }
}
🔐 NSG Variable
nsg_name = {
  nsg1 = {
    nsg_name            = "vm-nsg"
    location            = "West Europe"
    resource_group_name = "rg-name"
  }
}
🌐 Bastion Variable
bastion_pip = {
  bastion_pip_1 = {
    name                = "bastion-pip"
    location            = "West Europe"
    resource_group_name = "rg-name"
  }
}
🛡️ Bastion Host Variable
bastion_host = {
  bastion_host_1 = {
    host_name           = "bastion-host"
    location            = "West Europe"
    resource_group_name = "rg-name"
    subnet_id           = "/AzureBastionSubnet"
    pub_key             = "bastion_pip_1"
    config_name         = "config1"
  }
}
📤 Outputs
VM IDs & Names
Private IP Addresses
NSG IDs
Bastion Public IP
Bastion Host ID

Example:

output "vm_details" {
  value = {
    for k, vm in azurerm_linux_virtual_machine.vm :
    k => {
      id         = vm.id
      name       = vm.name
      private_ip = vm.private_ip_address
    }
  }
}
🔐 Security Best Practices
No public IP on VMs
Access via Bastion only
NSGs controlling inbound traffic
Sensitive data (passwords) should be stored in:
Azure Key Vault (recommended)
🚀 How to Deploy
terraform init
terraform plan
terraform apply
🧹 Cleanup
terraform destroy
📌 Notes
Ensure correct key mapping when using for_each
Always match nsg_key, pub_key, and VM/NIC keys
Bastion requires:
Standard Public IP
AzureBastionSubnet
Minimum /27 subnet
👨‍💻 Author

Terraform Azure Learning Project
