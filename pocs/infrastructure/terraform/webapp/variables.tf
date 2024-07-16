#############################################################################
# VARIABLES
#############################################################################

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure Region in which all resources should be created."
}

variable "naming_prefix" {
  type        = string
  description = "The naming prefix for the web app"
}

variable "service_plan_os_type" {
  type        = string
  description = "Service plan os type"
}

variable "service_plan_sku_name" {
  type        = string
  description = "Service plan sku name"
}

variable "service_plan_name" {
  type        = string
  description = "App Service Plan name"
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID where the resources will be deployed."
}

variable "ARM_TENANT_ID" {
  type        = string
  description = "Azure Active Directory (Tenant) ID."
}

variable "docker_registry_url" {
  type        = string
  description = "Docker Azure Container Registry URL."
}

variable "docker_image_name" {
  type        = string
  description = "Docker Image in ACR."
}

variable "docker_registry_username" {
  type        = string
  description = "Azure Container Registry Username."
}

variable "docker_registry_password" {
  type        = string
  description = "Azure Container Registry Password."
}