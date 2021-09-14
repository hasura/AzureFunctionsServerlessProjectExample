resource "azurerm_postgresql_firewall_rule" "graphinrule" {
  end_ip_address = "0.0.0.0"
  start_ip_address = "0.0.0.0"
  name = "allow-azure-internal"
  resource_group_name = azurerm_resource_group.graphin-rg.name
  server_name = azurerm_postgresql_server.graphinpgserver.name
}