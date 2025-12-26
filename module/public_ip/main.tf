resource "azurerm_public_ip" "pip" {
  for_each= var.pip
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = "Static"
  zones               = each.value.zones
  ddos_protection_mode = each.value.ddos_protection_mode
}

