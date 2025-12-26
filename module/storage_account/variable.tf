variable "storage_acc"{

    type=map(object({

        stg_name=string
        rg_name= string
        location = string
    }))
}