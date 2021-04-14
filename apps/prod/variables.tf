variable "sql-server" {
  type        = map(object({
    sql_server_name            = string
    resource_group_name        = string
    database_name              = string
 }))
}

  