terraform {
  backend "azurerm" {
    resource_group_name  = "sw-tech-titans-pocue-1-rg001"
    storage_account_name = "swttpoc1tfstate001"
    container_name       = "terraform-state"
    key                  = "sw-tt-pocue-1-setup.tfstate"
    subscription_id      = "a5a86e7a-a5a4-4a0f-98b6-605001cf22b2"
    tenant_id            = "b25036e3-de39-4fec-a4aa-bda41b870d38"
    use_oidc             = true
  }
}
