terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=2.48.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "aks_resource_group" "rg" { //terraform membuat resource group
    name = "nama_resource_group"
    location = "region_aks"
}

resource "aks_kubernetes_cluster" "cluster" {
  name                = "nama_cluster"
  location            = aks_resource_group.rg.location
  resource_group_name = aks_resource_group.rg.name
  dns_prefix          = "nama_cluster"

  default_node_pool {
    name       = "default" //jenis node worker yang di define
    node_count = "2"
    vm_size    = "standard_d2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}