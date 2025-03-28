resource "azurerm_virtual_network" "VNet1" {
  name                = "VNet1"
  resource_group_name = "RG1"
  address_space       = local.address_prefix
  location            = local.resource_location
}
  resource "azurerm_subnet" "subnet1" {
    name = "subnet1"
    resource_group_name = "RG1"
    virtual_network_name = "VNet1"
    address_prefixes = [local.address_prefix[0]]
    depends_on = [ azurerm_virtual_network.VNet1 ]
  }






  
  



  