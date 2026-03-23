data "azurerm_virtual_network" "sub1" {
  for_each = var.sub1_vnets

  name                = each.value.name
  resource_group_name = each.value.resource_group

  provider = azurerm.sub1
}

data "azurerm_virtual_network" "sub2" {
  for_each = var.sub2_vnets

  name                = each.value.name
  resource_group_name = each.value.resource_group

  provider = azurerm.sub2
}

data "azurerm_virtual_network" "sub3" {
  for_each = var.sub3_vnets

  name                = each.value.name
  resource_group_name = each.value.resource_group

  provider = azurerm.sub3
}