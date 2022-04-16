# Configure the Azure Provider

#---------------------------------
# Local declarations
#---------------------------------
resource "azurerm_resource_group" "rg" {
  name     = "example-resources"
  location = var.location
}
resource "azurerm_management_lock" "resource-group-level" {
  name       = "resource-group-level"
  scope      = azurerm_resource_group.example.id
  lock_level = "ReadOnly"
  notes      = "This Resource Group is Read-Only"
}

resource "azurerm_container_registry" "acr" {
  name                          = "containerRegistry1"
  resource_group_name           = var.resource_group_name
  location                      = azurerm_resource_group.rg.location
  sku                           = "Premium"
  admin_enabled                 = false
  public_network_access_enabled = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
