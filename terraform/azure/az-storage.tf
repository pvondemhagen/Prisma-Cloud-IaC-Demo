resource "azurerm_storage_account" "tfstorage" {
  name                     = "dmcgovern${var.environment}${random_integer.rnd_int.result}sa"
  resource_group_name      = var.resourcegroup
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  queue_properties {
    logging {
      delete                = false
      read                  = false
      write                 = true
      version               = "1.0"
      retention_policy_days = 10
    }
    hour_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
    minute_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
  }
  tags = {
    created_by           = "terraform"
    git_commit           = ""
    git_file             = "terraform/azure/az-storage.tf"
    git_last_modified_at = ""
    git_last_modified_by = ""
    git_modifiers        = ""
    git_org              = "davesc63"
    git_repo             = "dPrisma-Cloud-IaC-Demo"
    yor_trace            = ""
  }
}