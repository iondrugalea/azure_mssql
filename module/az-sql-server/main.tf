resource "azurerm_mssql_server" "this" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0" 
  administrator_login          = "idrugalea"
  administrator_login_password = "9Barcelona1655+"
  tags = {
    environment = "production"
  }
}
resource "azurerm_mssql_firewall_rule" "sql_firewall" {
  count = var.allow_azure_ip_access ? 1 : 0

  name                = "AllowAccessToAzure"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mssql_server.this.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}
resource "azurerm_mssql_database" "this" {
  name                = var.database_name
  server_id           = azurerm_mssql_server.this.id
  license_type        = var.license

  collation                        = var.database_collation
  sku_name                          = var.sku_name
  
}

resource "random_string" "password" {
  length           = 32
  special          = true
  override_special = "/@\" "
}