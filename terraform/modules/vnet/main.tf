resource azurerm_virtual_network module_virtual_network {
    resource_group_name      = var.resource_group_name
    location                 = var.location
    name                     = var.vnet_name
    address_space            = var.address_space

  #   ddos_protection_plan {
  #   id     = var.ddos
  #   enable = true
  # }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource azurerm_subnet module_subnet {
   count                 = "${length(var.subnet_prefix)}"
   name                  = "${lookup(element(var.subnet_prefix, count.index), "name")}"
   resource_group_name   = var.resource_group_name
   virtual_network_name  = azurerm_virtual_network.module_virtual_network.name
   address_prefixes      = ["${lookup(element(var.subnet_prefix, count.index), "ip")}"]
   service_endpoints     = "${lookup(element(var.subnet_prefix, count.index), "serviceendpoint")}"
   enforce_private_link_endpoint_network_policies = "${lookup(element(var.subnet_prefix, count.index), "privateendpoint")}"
}