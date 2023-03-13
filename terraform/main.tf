terraform {
        required_version = ">=1.0.11"
        backend "azurerm" {                     
                resource_group_name  = "__statefile-resource-group-name__"
                storage_account_name = "__storage-account-name__"
                container_name       = "thoughtworks-state"
                key                  = "thoughtworks.tfstate"
                access_key           = "__access-key__"
        }
}

provider "azurerm" {
                subscription_id = "__subscription-id__"
                client_id       = "__client-id__"
                client_secret   = "__client-secret__"
                tenant_id       = "__tenant-id__"
        features {}
}

module virtual_network_rg {
        source                  = "./modules/rg"
        resource_group_name     = "rg-vnet-001"
        location                = var.location
        solution                = var.solution
        system                  = "virtual network"
        env_prefix              = var.env_prefix
        businessunit            = var.businessunit
        owner                   = var.owner
}

module virtual_network {
        source                  = "./modules/vnet"
        vnet_name               = "vnet-001"
        resource_group_name     = module.virtual_network_rg.output_resource_group_name
        location                = module.virtual_network_rg.output_resource_group_location
        region_prefix           = var.region_prefix
        ordinal_prefix          = var.ordinal_prefix        
        subscription_prefix     = var.subscription_prefix
        address_space           = var.addressspace
        subnet_prefix           = var.subnet_prefix 
}

module aks_cluster {
        source                  = "./modules/aks"
        cluster_name            = "aks-001"
        resource_group_name     = module.virtual_network_rg.output_resource_group_name
        location                = module.virtual_network_rg.output_resource_group_location
        kubernetes_version      = "1.24.6"
        system_node_count       = 2
        node_resource_group     = "aks_terraform_-node_resources_rg"
}