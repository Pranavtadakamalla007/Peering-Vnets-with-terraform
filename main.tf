module "vnet" {
  source = "./Modules/Networking/Vnet"

  vnets = var.vnets
  providers = {
    azurerm = azurerm.sub1
  }
}

module "storage" {
  source = "./Modules/Storage/Storage_Account"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  container_name       = var.container_name

  providers = {
    azurerm = azurerm.sub1
  }
}