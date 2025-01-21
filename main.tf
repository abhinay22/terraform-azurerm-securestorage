terraform {
    required_version = ">=1.3.0"
 
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = ">=3.43.0"
    }
  }
}

locals {
  tags={
    "Environment":var.environment
  }
}

resource "azurerm_storage_account" "securestorage" {
    name=var.storageaccountname 
    location = var.location
    resource_group_name = var.resourcegroupname
    account_tier =var.environment=="production"?"Premium":"Standard"
    account_replication_type = var.environment=="production"?"GRS":"LRS"
    tags = local.tags
}

