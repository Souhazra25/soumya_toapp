terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "426a305f-f503-4960-8345-66640721b789"

}