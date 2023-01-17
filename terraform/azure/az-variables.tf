variable "subscription_id" {
  type        = string
  description = "The subscription ID to be scanned"
  default     = "e55f9dd1-0829-4b6d-b4a1-aeeed63af9f0"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "environment" {
  default     = "demo"
  description = "Must be all lowercase letters or numbers"
}

variable "resourcegroup" {
  type = string
  default     = "dmcgovern-RG"
  description = "Resource Group"
}
