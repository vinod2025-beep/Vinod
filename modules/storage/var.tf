variable "region" {}
variable "environment" {}
variable "appname" {}
variable "suffix" {}
variable "location" {}
#variable "resource_group_name" {}

variable "storage_override" {
  description = "Optional overrides for a specific storage account"
  type = object({
    cross_tenant_replication_enabled = optional(bool)
    blob_soft_delete_retention_days  = optional(number)
    access_tier                      = optional(string)
    is_hns_enabled                   = optional(bool)
    sftp_enabled                     = optional(bool)
    nfsv3_enabled                    = optional(bool)
  })
  default = {}
}

variable "resource_group_name" {
  type = string
}

