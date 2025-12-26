variable "rgs1" {
  description = "A map of resource groups to create"
  type = map(object({
    rg_name  = string
    location = string
  }))
}

# variable "storage_acc1" {
#   type = map(object({

#     stg_name = string
#     rg_name  = string
#     location = string
#   }))
# }

variable "vnet1" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
}

variable "subnet1" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}

variable "pip1" {
  type = map(object({
    pip_name             = string
    rg_name              = string
    location             = string
    zones                = optional(list(string))
    ddos_protection_mode = optional(string)
  }))
}

variable "nic1" {
  type = map(object({
    nic_name = string
    rg_name  = string
    location = string
    ip_configuration = list(object({
      subnet_name                   = string
      virtual_network_name          = string
      private_ip_address_allocation = string
      public_ip_name                = string
    }))
  }))

}

variable "nsg1"{
    type= map(object({
        nsg_name= string
        rg_name= string
        location= string
        rule_name= string
    }))
}

variable "virtual_machine1"{
    type= map(object({
        vm_name= string
        rg_name= string
        location= string
        vm_size= string
        admin_username= string
        admin_password= string
        nic_name= string
    }))
}
