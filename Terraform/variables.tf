variable "resource_group_location" {
  type        = string
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "aeratest-rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "acr_name" {
  type        = string
  default     = "aeratest-acr"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "aks_name" {
  type        = string
  default     = "aeratest-aks"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}
