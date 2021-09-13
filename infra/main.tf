terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.41.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "graphin-rg" {
  location = "westus2"
  name = "graphingroup"
}

resource "azurerm_storage_account" "graphinstorageaccount" {
  name = "graphinstorage"
  account_replication_type = "GRS"
  account_tier = "Standard"
  location = azurerm_resource_group.graphin-rg.location
  resource_group_name = azurerm_resource_group.graphin-rg.name
}

variable username {}
variable password {}
variable server {}
variable apiport {}
variable pgdatabase {}
