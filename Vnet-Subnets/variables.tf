variable "resource_group_name" {
    type = string
    
}
variable "location" {
    type = string
  
}
variable "vnet_name" {
    type = string
  
}

variable "address_space" {
  type = list
}

variable "subnets" {
  type = map(any)
  default = {
    subnet1 = {
        name = "subnet1_vnet1-Hub"
        address_prefixes = ["10.0.0.0/24"]
    }
    subnet2 = {
        name = "subnet2_vnet1-Hub"
        address_prefixes = ["10.0.1.0/24"]
    }
    subnet3 = {
        name = "subnet-frontend"
        address_prefixes = ["10.0.2.0/24"]
    }
    
  }
}