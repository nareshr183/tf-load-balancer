output "nic_id1" {
  value = azurerm_network_interface.nic_vm1.id
}

output "nic_id2" {
  value = azurerm_network_interface.nic_vm2.id
}

output "nic_vm1_private_ip_address" {
  value = azurerm_network_interface.nic_vm1.private_ip_address
  
}

output "nic_vm2_private_ip_address" {
  value = azurerm_network_interface.nic_vm2.private_ip_address
  
}