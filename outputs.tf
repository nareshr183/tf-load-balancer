output "resource_group_name" {
  value = module.create_RG.resource_group_name
}

output "location" {
  value = module.create_RG.resource_group_location
}

output "vnet_id" {
  value = module.create_Vnet-Subnets.vnet_id_out
}

output "vnet_name" {
  value = module.create_Vnet-Subnets.vnet_name_out
} 

output "subnet1_name" {
  value = module.create_Vnet-Subnets.subnets_out.subnet1.subnet1_name
  
}

output "subnet1_id" {
  value = module.create_Vnet-Subnets.subnets_out.subnet1.subnet1_id
  
}

output "subnet2_name" {
  value = module.create_Vnet-Subnets.subnets_out.subnet2.subnet2_name
  
}

output "subnet2_id" {
  value = module.create_Vnet-Subnets.subnets_out.subnet2.subnet2_id
  
}

output "subnet3_name" {
  value = module.create_Vnet-Subnets.subnets_out.subnet3.subnet3_name
  
}

output "subnet3_id" {
  value = module.create_Vnet-Subnets.subnets_out.subnet3.subnet3_id
  
}

output "nic_id1" {
  value = module.create_NICs.nic_id1
  
}

output "nic_id2" {
  value = module.create_NICs.nic_id2
  
}