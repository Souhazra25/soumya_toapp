resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets
  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.address_space
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name           = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
    
  }
}