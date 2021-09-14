resource "azurerm_container_group" "hasura" {
  location = azurerm_resource_group.graphin-rg.location
  name = "hasurianapi"
  os_type = "Linux"
  resource_group_name = azurerm_resource_group.graphin-rg.name
  ip_address_type = "public"
  dns_name_label = "graphindns"
  
  container {
    cpu = "0.5"
    image = "hasura/graphql-engine:v2.0.6"
    memory = "1.5"
    name = "hasurian-data-layer-api"
    
    environment_variables = {
      HASURA_GRAPHQL_SERVER_PORT = var.apiport
      HASURA_GRAPHQL_ENABLE_CONSOLE = true
    }
    secure_environment_variables = {
      HASURA_GRAPHQL_DATABASE_URL = "postgres://${var.username}%40${azurerm_postgresql_server.graphinpgserver.name}:${var.password}@${azurerm_postgresql_server.graphinpgserver.fqdn}:5432/${var.pgdatabase}"
    }
    
    ports {
      port = var.apiport
      protocol = "TCP"
    }
  }
}
