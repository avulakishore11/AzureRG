terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

# terrafrom remote backend storage
terraform {
  backend "azurerm" {
    resource_group_name   = "dev-rg"
    storage_account_name  = "sa286"
    container_name        = "terraform-container"
    key                   = "state.tfstate"
  }
}

provider "azurerm" {
  features {}

}


resource"resource_group_name" "dev-rg" {
    name = "dev096512-rg"
    location = "east_us"

}
