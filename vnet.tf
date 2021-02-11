
resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "West Europe"
}

module "network" {
  source  = "app.terraform.io/KHILJI--training/network/azurerm"
  version = "3.0.1"
  resource_group_name = azurerm_resource_group.example.name
}