rgs1= {
RG={
    rg_name= "Dev-RG"
    location= "centralindia"
}
}

# storage_acc1= {
#     stg1={
#         stg_name= "dev420storageacc"
#         rg_name= "Dev-RG"
#         location = "centralindia"
#     }}
    # stg2={
    #     stg_name= "devstorageacc02"
    #     rg_name= "Dev-RG"
    #     location = "centralindia"
    # }
#}

vnet1={
    vnet_1={
        vnet_name= "dev-vnet-01"
        location = "centralindia"
        rg_name= "Dev-RG"
        address_space= ["10.0.0.0/16"]
}
}

subnet1= {

    subnet_1={
        subnet_name="frontend-subnet"
        rg_name= "Dev-RG"
        vnet_name= "dev-vnet-01"
        address_prefixes= ["10.0.0.0/24"]
}
subnet_2={
        subnet_name="backend-subnet"
        rg_name= "Dev-RG"
        vnet_name= "dev-vnet-01"
        address_prefixes= ["10.0.1.0/24"]
        }
}

pip1= {
    pip_1 ={
        pip_name= "frontend-pip"
        rg_name= "Dev-RG"
        location= "centralindia"
    }

    pip_2= {
        pip_name= "backend-pip"
        rg_name= "Dev-RG"
        location= "centralindia"
    }
}

nic1 ={
    nic_1={
        nic_name= "frontend-nic"
        rg_name= "Dev-RG"
        location= "centralindia"
        ip_configuration = [
            {
                subnet_name= "frontend-subnet"
                virtual_network_name= "dev-vnet-01"
                private_ip_address_allocation= "Dynamic"
                public_ip_name= "frontend-pip"
            }
        ]
        
    }
    nic_2={
        nic_name= "backend-nic"
        rg_name= "Dev-RG"
        location= "centralindia"
        ip_configuration = [
            {
                subnet_name= "backend-subnet"
                virtual_network_name= "dev-vnet-01"
                private_ip_address_allocation= "Dynamic"
                public_ip_name= "backend-pip"
            }
        ]   
    }
}

nsg1={
    nsg_1={
        nsg_name= "frontend-nsg"
        rg_name= "Dev-RG"
        location= "centralindia"
        rule_name= "frontend_rule"
    }
    nsg_2={
        nsg_name= "backend-nsg"
        rg_name= "Dev-RG"
        location= "centralindia"
        rule_name= "backend_rule"
    }
}

virtual_machine1={
    vm_1={
        vm_name= "frontend-vm"
        rg_name= "Dev-RG"
        location= "centralindia"
        vm_size= "Standard_D2s_v3"
        # admin_username= "adminuser"
        # admin_password= "Password@12345"
        key_vault_name= "secretevault420"
        nic_name= "frontend-nic"
    }
    vm_2={
        vm_name= "backend-vm"
        rg_name= "Dev-RG"
        location= "centralindia"
        vm_size= "Standard_D2s_v3"
        # admin_username= "adminuser"
        # admin_password= "Password@12345"
        key_vault_name= "secretevault420"
        nic_name= "backend-nic"
    }
}

# key_vault1={
#     kv_1={
#         Key_vault_name= "secretevault423"
#         rg_name= "Dev-RG"
#         location = "centralindia"
#         sku_name = "standard"
#     }
    
# }