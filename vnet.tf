
resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "West Europe"
}

module "network" {
  source  = "app.terraform.io/KHILJI--training/network/azurerm"
  version = azurerm_resource_group.example.name
  resource_group_name = "khiljm2"
}