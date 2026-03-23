hub_subscription_id  = "083eabbe-c1c6-4b19-86c6-07fe61ac3858"
sub1_subscription_id  = "083eabbe-c1c6-4b19-86c6-07fe61ac3858"
sub2_subscription_id = "811a556c-f1a5-407f-b3b3-90c53ec639a1"
sub3_subscription_id = "539723c6-53a1-4c47-95c5-b246a952a420"

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