
resource "azurerm_virtual_network" "vnet" {
    name                = "myVNet"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
  
}

resource "azurerm_subnet" "snet" {
    name                 = "mySubnet"
    resource_group_name  = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.0.0/25"]
  
}