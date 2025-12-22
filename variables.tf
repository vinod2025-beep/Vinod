variable "region" {
  description = "Azure region short code (weu, eus, uks)"
  type        = string
}

variable "location" {
  description = "Azure region location (westeurope, eastus)"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, qa, prod)"
  type        = string
}

variable "appname" {
  description = "Application or platform name"
  type        = string
}

variable "suffix" {
  description = "Default numeric suffix"
  type        = string
  default     = "002"
}
variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}