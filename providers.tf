provider "azurerm" {
  alias           = "hub"
  subscription_id = var.hub_subscription_id
  features {}
}

provider "azurerm" {
  alias           = "sub1"
  subscription_id = var.hub_subscription_id
  features {}
}


provider "azurerm" {
  alias           = "sub2"
  subscription_id = var.sub2_subscription_id
  features {}
}

provider "azurerm" {
  alias           = "sub3"
  subscription_id = var.sub3_subscription_id
  features {}
}