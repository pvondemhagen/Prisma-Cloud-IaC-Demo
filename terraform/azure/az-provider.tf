# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = var.subscription_id 
  features {}
}
data "azurerm_client_config" "current" {}

terraform {  
  backend "azurerm" {
    resource_group_name = "dmcgovern-RG"
    storage_account_name = "dmcgterraform"
    container_name = "tfstate"
    key = "prod.terraform.tfstate"
  }
}