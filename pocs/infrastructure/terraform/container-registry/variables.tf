variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure Region in which all resources should be created."
}

variable "acr_name" {
  type        = string
  description = "The name for the Azure Container Registry."
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID where the resources will be deployed."
}

variable "ARM_TENANT_ID" {
  type        = string
  description = "Azure Active Directory (Tenant) ID."
}