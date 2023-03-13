output output_subnet_id {
    description = "The id of the newly created vNet"
    value       = azurerm_subnet.module_subnet.*.id
}

output output_vnet_id {
    description = "The id of the newly created vNet"
   value       = azurerm_virtual_network.module_virtual_network.id
}

output output_vnet_name {
    description = "The Name of the newly created vNet"
    value       = azurerm_virtual_network.module_virtual_network.name
}

output output_vnet_rgname {
    description = "The Name of the newly created vNet"
    value       = azurerm_virtual_network.module_virtual_network.resource_group_name
}

output output_vnet_location {
    description = "The location of the newly created vNet"
    value       = azurerm_virtual_network.module_virtual_network.location
}

output output_vnet_address_space {
    description = "The address space of the newly created vNet"
    value       = azurerm_virtual_network.module_virtual_network.address_space
}