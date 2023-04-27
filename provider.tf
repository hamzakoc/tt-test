terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.53.0"
    }
  }


  backend "azurerm" {
    resource_group_name  = "statefile"
    storage_account_name = "aztestnewhamza"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }


}

provider "azurerm" {
  # Configuration options
  features {

  }
}
