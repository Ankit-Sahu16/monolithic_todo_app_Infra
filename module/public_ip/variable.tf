variable "pip"{
type=map(object({
    pip_name= string
    rg_name=string
    location= string
    zones= optional(list(string))
    ddos_protection_mode= optional(string)
}))
}
