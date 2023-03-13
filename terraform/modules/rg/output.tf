# # outputs.tf: contains the definitions for the deployment output variables, 
# # i.e. all the information that you want to retrieve and output the deployment

output output_resource_group_id {
    description = "id of RG"
    value       = azurerm_resource_group.module_resource_group.id
}

output output_resource_group_name {
    description = "name of RG"
    value       = azurerm_resource_group.module_resource_group.name
}

output output_resource_group_location {
    description = "location of RG"
    value       = azurerm_resource_group.module_resource_group.location
}

output output_resource_group_tags {
    description = "tags of RG"
    value       = azurerm_resource_group.module_resource_group.tags
}