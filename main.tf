module "create_RG" {
    source = "./Rg"
    resource_group_name = var.resource_group_name
    location = var.location
    
}

module "create_Vnet-Subnets" {
    source = "./Vnet-Subnets"
    resource_group_name = var.resource_group_name
    location = var.location
    vnet_name = "vnet1-Hub"
    address_space = ["10.0.0.0/16"]
   depends_on = [
     module.create_RG
   ]
}

module "create_NSG" {
    source = "./Networksecuritygroup"
    nsg-name= "nsg1"
    resource_group_name = var.resource_group_name
    location = var.location
    subnet1_id = module.create_Vnet-Subnets.subnets_out.subnet1.subnet1_id
    subnet2_id = module.create_Vnet-Subnets.subnets_out.subnet2.subnet2_id
    depends_on = [
      module.create_Vnet-Subnets
    ]
}

module "create_NICs" {
    source = "./NIC"
    nic_name = "nic_vm1"
    nic_name2 = "nic_vm2"
    resource_group_name = var.resource_group_name
    location = var.location
    subnet1-id = module.create_Vnet-Subnets.subnets_out.subnet1.subnet1_id
    subnet2-id = module.create_Vnet-Subnets.subnets_out.subnet2.subnet2_id
    depends_on = [
      module.create_Vnet-Subnets
    ]
}

module "create_VMs" {
    source = "./VM"
    vm_names = ["webserver1","webserver2"]
    resource_group_name = var.resource_group_name
    location = var.location
    nic_id1 =  module.create_NICs.nic_id1
    nic_id2 =  module.create_NICs.nic_id2
    depends_on = [
      module.create_NICs
    ]
    
}

module "create_App-Gateway"{
    source = "./Appgateway"
    pip_name = "lb-pip"
    resource_group_name = var.resource_group_name
    location = var.location
    subnet-frontend-id = module.create_Vnet-Subnets.subnets_out.subnet3.subnet3_id
    nic_vm1_private_ip_address = module.create_NICs.nic_vm1_private_ip_address
    nic_vm2_private_ip_address = module.create_NICs.nic_vm2_private_ip_address
    depends_on = [
      module.create_VMs
    ]
}