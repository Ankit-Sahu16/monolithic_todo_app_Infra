data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "KV" {
  for_each = var.key_vault

  name                = each.value.Key_vault_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = each.value.sku_name

  soft_delete_retention_days = 7
  purge_protection_enabled  = false

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "Set",
      "List",
      "Delete"
    ]
  }
}

