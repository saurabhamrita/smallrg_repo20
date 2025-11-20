terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "pipelinerg20"
    storage_account_name = "pipelinestg20"
    container_name       = "pipelinecontainer20"
    key                  = "dev.terraform.tfstate"
}

}

provider "azurerm" {
features {
  
}
subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
}