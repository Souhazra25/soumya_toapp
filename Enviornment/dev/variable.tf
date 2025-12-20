variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    address_space       = list(string)
    resource_group_name = string
    tags                = map(string)
    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}

variable "pip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "key_vaults" {
  type = map(object({
    kv_name  = string
    location = string
    rg_name  = string
  }))
}
variable "vms" {
  type = map(object(
    {
      kv_name                = string
      nic_name               = string
      location               = string
      rg_name                = string
      vnet_name              = string
      subnet_name            = string
      pip_name               = string
      vm_name                = string
      size                   = string
      admin_username         = string
      admin_password         = string
      source_image_reference = map(string)
    }
  ))
}

variable "location" {
  type    = string
  default = "SouthEastAsia"
}

