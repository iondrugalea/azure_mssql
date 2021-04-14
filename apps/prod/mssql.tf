
module "mssql_server" {
  source = "../../module/az-sql-server"
  sql_server_name = var.sql-server.prod.sql_server_name
  database_name = var.sql-server.prod.database_name
  resource_group_name = var.sql-server.prod.resource_group_name
 }