module "peer_sub1" {
  source = "./Modules/Networking/Vnet-Peering"

  for_each = var.sub1_vnets

  hub_vnet_id   = module.vnet.vnet_ids["hub"]
  hub_vnet_name = module.vnet.vnet_names["hub"]
  hub_rg_name   = var.vnets["hub"].resource_group

  spoke_vnet_id   = data.azurerm_virtual_network.sub1[each.key].id
  spoke_vnet_name = data.azurerm_virtual_network.sub1[each.key].name
  spoke_rg_name   = each.value.resource_group

  providers = {
    azurerm.hub   = azurerm.sub1
    azurerm.spoke = azurerm.sub1
  }
}

module "peer_sub2" {
  source = "./Modules/Networking/Vnet-Peering"

  for_each = var.sub2_vnets

 hub_vnet_id   = module.vnet.vnet_ids["hub"]
 hub_vnet_name = module.vnet.vnet_names["hub"]
 hub_rg_name   = var.vnets["hub"].resource_group

  spoke_vnet_id   = data.azurerm_virtual_network.sub2[each.key].id
  spoke_vnet_name = data.azurerm_virtual_network.sub2[each.key].name
  spoke_rg_name   = each.value.resource_group

  providers = {
    azurerm.hub   = azurerm.sub1
    azurerm.spoke = azurerm.sub2
  }
}


module "peer_sub3" {
  source = "./Modules/Networking/Vnet-Peering"

  for_each = var.sub3_vnets

  hub_vnet_id   = module.vnet.vnet_ids["hub"]
 hub_vnet_name = module.vnet.vnet_names["hub"]
 hub_rg_name   = var.vnets["hub"].resource_group

  spoke_vnet_id   = data.azurerm_virtual_network.sub3[each.key].id
  spoke_vnet_name = data.azurerm_virtual_network.sub3[each.key].name
  spoke_rg_name   = each.value.resource_group

  providers = {
    azurerm.hub   = azurerm.sub1
    azurerm.spoke = azurerm.sub3
  }
}