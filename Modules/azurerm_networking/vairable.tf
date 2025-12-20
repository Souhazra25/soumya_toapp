variable "vnets" {
    type = map(object({
        name                = string
        location            = string
        address_space       = list(string)
        resource_group_name = string
        tags                = map(string)
        subnets             = map(object({
            name           = string
            address_prefixes = list(string)
        }))
    }))  
}