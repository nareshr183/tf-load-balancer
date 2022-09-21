output "vnet_id_out" {
  value = resource.azurerm_virtual_network.vnet1.id
}

output "vnet_name_out" {
  value = resource.azurerm_virtual_network.vnet1.name
}

output "subnets_out" {
  value = {
    for k, inst in resource.azurerm_subnet.subnet : k => {
      subnet1_id = (inst.name == "subnet1_vnet1-Hub" ? inst.id : "" )
      subnet1_name = (inst.name == "subnet1_vnet1-Hub" ? inst.name : "" )
      subnet2_id = (inst.name == "subnet2_vnet1-Hub" ? inst.id : "" )
      subnet2_name = (inst.name == "subnet2_vnet1-Hub" ? inst.name : "" )
      subnet3_id = (inst.name == "subnet-frontend" ? inst.id : "" )
      subnet3_name = (inst.name == "subnet-frontend" ? inst.name : "" )
      
    }
  }
}

