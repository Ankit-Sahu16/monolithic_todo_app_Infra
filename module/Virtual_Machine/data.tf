data "azurerm_network_interface" "nic_data" {
    for_each=var.virtual_machine

  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}
data "azurerm_key_vault" "kv_data" {
    for_each=var.virtual_machine

  name                = each.value.key_vault_name
  resource_group_name = "Ankit_rg"
}

data "azurerm_key_vault_secret" "vm_username" {
  for_each = var.virtual_machine

  name         = "vm-admin-username"
  key_vault_id = data.azurerm_key_vault.kv_data[each.key].id
}

data "azurerm_key_vault_secret" "vm_password" {
  for_each = var.virtual_machine

  name         = "vm-admin-password"
  key_vault_id = data.azurerm_key_vault.kv_data[each.key].id
}
