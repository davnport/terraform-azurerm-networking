resource "azurerm_resource_group" "module" {
  name     = "${local.module_name}-rg"
  location = var.location
  tags = {
    environment = "dev"
    version     = "v0.12.0"
  }
}

resource "azurerm_virtual_network" "module" {
  name                = "${local.module_name}-vnet"
  address_space       = var.vnet_address_spacing
  location            = azurerm_resource_group.module.location
  resource_group_name = azurerm_resource_group.module.name
  tags = {
    environment = "dev"
  }
}

