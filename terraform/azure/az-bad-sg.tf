resource azurerm_network_security_group "bad_sg" {
  location            = var.location
  name                = "dmcgovern-${var.environment}-bad-SG"
  resource_group_name = var.resourcegroup

  security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "AllowSSH"
    priority                   = 200
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
    destination_port_range     = "22-22"
    destination_address_prefix = "*"
  }

  security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "AllowRDP"
    priority                   = 300
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
    destination_port_range     = "3389-3389"
    destination_address_prefix = "*"
  }
  tags = {
    git_commit           = ""
    git_file             = "terraform/azure/az-bag-sg.tf"
    git_last_modified_at = ""
    git_last_modified_by = "dmcgovern@paloaltonetworks.com"
    git_modifiers        = "davesc63"
    git_org              = "davesc63"
    git_repo             = "Prisma-Cloud-IaC-Demo"
    yor_trace            = ""
  }
}