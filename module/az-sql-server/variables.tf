variable "location" {
  default = "northeurope"
  description = "The location where the resources should be created"
}
variable "resource_group_name" {
  type = string
  description = "The resource group the sql server should be placed in"
}
variable "sql_server_name" {
  type = string
  description = "Name of the server"
}

variable "database_name" {
  description = "Name on the initial database on the server. "
  type = string
}

variable "database_collation" {
  default = "SQL_LATIN1_GENERAL_CP1_CI_AS"
  description = "Which collation the initial database should have"
}
variable "license" {
  default = "LicenseIncluded"
}
variable "sku_name" {
  default = "Standard"
  description = "Which database scaling edition the database should have."
}

# variable "database_requested_service_objective_name" {
#   default = "S1"
#   description = "Which service scaling objective the database should have"
# }

variable "admin_login_name" {
  default     = "superuser"
  description = "Login name for the sql server administrator. If not set the default login name will be 'superuser'."
}

variable "allow_azure_ip_access" {
  default     = "false"
  description = "If azure ip ranges should be allowed through the sql server firewall."
}


variable "lock_database_resource" {
  default     = "false"
  description = "Param defining whether to set CanNotDelete lock on the database resource upon DB creation. Possible input values is 'true' and 'false'."
}