hub_subscription_id  = "<Sub-id-of-hub>"
sub1_subscription_id  = "<Sub1-id>"
sub2_subscription_id = "<Sub2-id>"
sub3_subscription_id = "<Sub3-id>"

vnets = {
  hub = {
    vnet_name      = "hub-vnet"
    vnet_location  = "East US"
    resource_group = "pranav-rg"
    address_space  = ["10.9.0.0/16"]
  }
}


sub1_vnets = {
  app1 = {
    name           = "peering-1-sandbox"
    resource_group = "peering-pranav-rg"
  }

   app2 = {
    name           = "peering-2-Sandbox"
    resource_group = "peering-pranav-rg"
  }
}

sub2_vnets = {
  app3 = {
    name           = "peering-1dev"
    resource_group = "peering-rg-pranav"
  }

  app4 = {
    name           = "peering-2-dev"
    resource_group = "peering-rg-pranav"
  }
}

sub3_vnets = {
  app5 = {
    name           = "peering-1-products"
    resource_group = "peering-rg-pranav"
  }

   app6 = {
    name           = "peering-2-products"
    resource_group = "peering-rg-pranav"
  }
}


resource_group_name   = "pranav-rg"
location              = "East US"
storage_account_name  = "mtvtfstate12345"
container_name        = "tfstate"
