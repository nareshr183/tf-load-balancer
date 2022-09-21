variable "nic_name" {
    type = string
}

variable "nic_name2" {
    type = string
}


variable "resource_group_name" {
    type = string
    
}
variable "location" {
    type = string
  
}

variable "subnet1-id" {
    type = string
  
}

variable "subnet2-id" {
    type = string
  
}
variable "ip_address_allocation" {
    type = string
    default = "Dynamic"
  
}



