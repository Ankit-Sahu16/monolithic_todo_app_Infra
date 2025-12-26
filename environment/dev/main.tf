module "RG" {
    source= "../../module/resource_group"
    rgs= var.rgs1
}

# module "storage_account" {
#     depends_on = [module.RG]
#     source= "../../module/storage_account"
#     storage_acc= var.storage_acc1
# }

module "Virtual_network"{
    depends_on = [module.RG]
    source= "../../module/vnet"
    vnet= var.vnet1
}

module "subnet"{
    depends_on= [module.Virtual_network]
    source= "../../module/subnet"
    subnet=var.subnet1
}

module "public_ip"{
    depends_on= [module.RG]
    source= "../../module/public_ip"
    pip=var.pip1
}

module "Network_interface_card"{
    depends_on= [module.subnet,module.public_ip]
    source= "../../module/Network_interface_card"
    nic=var.nic1
}

module "Network_security_group"{
    depends_on= [module.RG]
    source= "../../module/Network_security_group"
    nsg=var.nsg1
}

module "virtual_machine"{
    depends_on= [module.Network_interface_card,module.Network_security_group]
    source= "../../module/VM"
    virtual_machine= var.virtual_machine1
}