variable "region" {}
variable "environment" {}
variable "appname" {}
variable "suffix" {}
variable "location" {}

variable "rg_override" {
  description = "Optional RG-level overrides (tags only)"
  type        = map(any)
  default     = {}
}
