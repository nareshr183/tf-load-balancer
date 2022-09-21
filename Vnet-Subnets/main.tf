resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  
 }

 
# create subnets for vm's and for appgateway

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets
  name                 =each.value["name"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
 address_prefixes     = each.value["address_prefixes"]
  depends_on = [azurerm_virtual_network.vnet1]
}
