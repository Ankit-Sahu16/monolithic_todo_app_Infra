variable "nsg"{
    type= map(object({
        nsg_name= string
        rg_name= string
        location= string
        rule_name= string
    }))
}