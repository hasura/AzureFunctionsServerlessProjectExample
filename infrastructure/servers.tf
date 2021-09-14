resource "azurerm_postgresql_server" "graphinpgserver" {
  location = azurerm_resource_group.graphin-rg.location
  name = var.server
  resource_group_name = azurerm_resource_group.graphin-rg.name
  sku_name = "B_Gen5_2"
  version = "11"

  storage_mb = "5120"
  backup_retention_days = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled = true
  
  administrator_login = var.username
  administrator_login_password = var.password
  ssl_enforcement_enabled = true
}