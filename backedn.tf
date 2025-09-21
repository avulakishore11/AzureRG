terraform {
  backend "azurerm" {
    resource_group_name   = "sample-rg"
    storage_account_name  = "sa120954"
    container_name        = "terraform-container"
    key                   = "vnet.dev.tfstate"
  }
}
