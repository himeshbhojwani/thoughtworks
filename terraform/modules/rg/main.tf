resource azurerm_resource_group module_resource_group {
    name     = var.resource_group_name
    location = var.location
    tags     =  {
                solution        = var.solution
                system          = var.system
                environment     = var.env_prefix
                businessunit    = var.businessunit
                owner           = var.owner
            }
}