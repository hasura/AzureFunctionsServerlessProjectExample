resource "azurerm_postgresql_database" "graphindatabase" {
  charset = "UTF8"
  collation = "English_United States.1252"
  name = var.pgdatabase
  resource_group_name = azurerm_resource_group.graphin-rg.name
  server_name = azurerm_postgresql_server.graphinpgserver.name
}