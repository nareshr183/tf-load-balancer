# create network interface card for vm1

resource "azurerm_network_interface" "nic_vm1" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.nic_name
    subnet_id                     = var.subnet1-id
    private_ip_address_allocation = var.ip_address_allocation
    #public_ip_address_id          = azurerm_public_ip.pip_vm1.id
  }
  
} 

resource "azurerm_network_interface" "nic_vm2" {
  name                = var.nic_name2
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.nic_name2
    subnet_id                     = var.subnet2-id
    private_ip_address_allocation = var.ip_address_allocation
   # public_ip_address_id          = azurerm_public_ip.pip_vm2.id
  }
  
} 