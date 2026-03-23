terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets

  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.resource_group
  address_space       = each.value.address_space
}