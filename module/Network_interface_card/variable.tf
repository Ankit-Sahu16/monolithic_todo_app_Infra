variable "nic" {
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
