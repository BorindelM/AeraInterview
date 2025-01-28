terraform {
  backend "azurerm" {
    resource_group_name  = "tf_rg_blobstore"
    storage_account_name = "mariusstorage"
    container_name       = "tfstate"
    key                  = "terraform.state"
    tenant_id            = "f40fe910-6b2f-47ed-8d3a-3029e3bcb6a0"
    subscription_id      = "6f605820-9e9d-40aa-a2b3-2e0c8f5933cc"
  }
}