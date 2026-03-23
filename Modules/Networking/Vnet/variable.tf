variable "vnets" {
  type = map(object({
    vnet_name      = string
    vnet_location  = string
    resource_group = string
    address_space  = list(string)
  }))
}