data "azurerm_network_interface" "nic_data" {
    for_each=var.virtual_machine

  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}
