variable "resource_group_name" {}
variable "location" {}

variable "storage_account_name" {}

variable "account_tier" {
  default = "Standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "container_name" {
  default = "tfstate"
}