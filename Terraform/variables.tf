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
  default     = "aeratestacr"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "aks_name" {
  type        = string
  default     = "aeratest-aks"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "tf_state_resource_group"{
  type = string
  default = "tf_rg_blobstore"
}

variable "tf_state_storage_account"{
  type = string
  default = "mariusstorage"
}

variable "tf_state_container_name"{
  type = string
  default = "tfstate"
}

variable "tf_state_container_key"{
  type = string
  default = "terraform.state"
}

variable "tf_state_tenant_id"{
  type = string
  default = "f40fe910-6b2f-47ed-8d3a-3029e3bcb6a0"
}

variable "tf_state_subscription_id"{
  type = string
  default = "Azure subscription 1"
}