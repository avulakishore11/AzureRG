resource "azurerm_resource_group" "example" {
  name     = "sample-rg"
  location = var.location
  }

resource "azurerm_network_security_group" "example" {
  name                = "sample-security-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
 # dns_servers         = ["10.0.0.4", "10.0.0.5"]

  
  subnet {
    name             = "subnet1"
    address_prefixes = var.subnet_address_prefixes
    security_group   = azurerm_network_security_group.example.id
  }


  tags = {
    environment = "Development"


  }
}