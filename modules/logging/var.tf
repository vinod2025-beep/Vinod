variable "region" {}
variable "environment" {}
variable "appname" {}
variable "suffix" {}
variable "location" {}
#variable "resource_group_name" {}

variable "log_override" {
  description = "Optional Log Analytics overrides"
  type        = map(any)
  default     = {}
}
variable "resource_group_name" {
  type = string
}
