resource "azurerm_resource_group" "test" {
  name     = "my-resources"
  location = "West Europe"
}

module "network" {
  module "network" {
  source  = "app.terraform.io/KHILJI--training/network/azurerm"
  version = "3.0.1"
  # insert required variables here
}
}