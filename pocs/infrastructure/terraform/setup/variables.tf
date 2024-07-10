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
  description = "The naming prefix for the storage account"
}

variable "container_name" {
  type        = string
  description = "The name of the container."
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID where the resources will be deployed."
}