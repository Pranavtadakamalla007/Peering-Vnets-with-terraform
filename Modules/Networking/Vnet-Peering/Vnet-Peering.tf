terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

      configuration_aliases = [
        azurerm.hub,
        azurerm.spoke
      ]
    }
  }
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  name                      = "hub-to-${var.spoke_vnet_name}"
  resource_group_name       = var.hub_rg_name
  virtual_network_name      = var.hub_vnet_name
  remote_virtual_network_id = var.spoke_vnet_id

  allow_virtual_network_access = true

  provider = azurerm.hub
}

resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  name                      = "spoke-to-hub-${var.spoke_vnet_name}"
  resource_group_name       = var.spoke_rg_name
  virtual_network_name      = var.spoke_vnet_name
  remote_virtual_network_id = var.hub_vnet_id

  allow_virtual_network_access = true

  provider = azurerm.spoke
}