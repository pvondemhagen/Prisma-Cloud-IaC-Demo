resource "azurerm_resource_group" "dmcgovern-RG2" {
  name     = "dmcgovern-${var.environment}-RG"
  location = var.location
  tags = {
    created_by           = "terraform"
    git_commit           = ""
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = ""
    git_last_modified_by = "dmcgovern@paloaltonetworks.com"
    git_modifiers        = "davesc63"
    git_org              = "davesc63"
    git_repo             = "Prisma-Cloud-IaC-Demo"
    yor_trace            = ""
  }
}