variable "name" {}

variable "resource_group_name" {}

variable "virtual_network_name" {}

variable "address_prefixes" {
  type = list(string)
}

variable "nat_gateway_id" {
  default = null
}

variable "service_endpoints" {
  type     = set(string)
  default  = []
  nullable = false
}

variable "delegation" {
  type = object({
    name = string
    service_delegation = object({
      name    = string
      actions = list(string)
    })
  })
  default = null
}