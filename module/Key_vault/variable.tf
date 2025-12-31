variable "key_vault" {
    type=map(object({
        Key_vault_name= string
        rg_name= string
        location = string
        sku_name = string
    }))
}