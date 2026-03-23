variable "hub_subscription_id" {}
variable "sub1_subscription_id" {}
variable "sub2_subscription_id" {}
variable "sub3_subscription_id" {}


variable "vnets" {
  type = map(object({
    vnet_name      = string
    vnet_location  = string
    resource_group = string
    address_space  = list(string)
  }))
}

variable "sub1_vnets" {
  type = map(object({
    name           = string
    resource_group = string
  }))
}

variable "sub2_vnets" {
  type = map(object({
    name           = string
    resource_group = string
  }))
}

variable "sub3_vnets" {
  type = map(object({
    name           = string
    resource_group = string
  }))
}


variable "resource_group_name" {}
variable "location" {}
variable "storage_account_name" {}
variable "container_name" {}