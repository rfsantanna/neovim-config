terraform {
  required_version = ">= 1.0.7"
  backend "azurerm" {
    resource_group_name  = "iac-neovim-config_vghq1igy"
    storage_account_name = "platformervghq1igy" 
    container_name       = "terraform-base"
    key                  = "main.tfstate"
  }
}

provider "azurerm" {
  skip_credentials_validation = true
  features {
    key_vault {
      recover_soft_deleted_key_vaults = true
      purge_soft_delete_on_destroy    = false
    }
  }
}

