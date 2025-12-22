resource "azurerm_storage_account" "this" {
  name                = local.storage_name
  location            = var.location
  resource_group_name = var.resource_group_name

  access_tier              = local.final_storage_config.access_tier
  account_kind             = local.final_storage_config.account_kind
  account_tier             = local.final_storage_config.account_tier
  account_replication_type = local.final_storage_config.account_replication_type

  allow_nested_items_to_be_public   = local.final_storage_config.allow_nested_items_to_be_public
  cross_tenant_replication_enabled  = local.final_storage_config.cross_tenant_replication_enabled
  default_to_oauth_authentication   = local.final_storage_config.default_to_oauth_authentication
  https_traffic_only_enabled        = local.final_storage_config.https_traffic_only_enabled
  infrastructure_encryption_enabled = local.final_storage_config.infrastructure_encryption_enabled

  is_hns_enabled               = local.final_storage_config.is_hns_enabled
  large_file_share_enabled     = local.final_storage_config.large_file_share_enabled
  local_user_enabled           = local.final_storage_config.local_user_enabled
  nfsv3_enabled                = local.final_storage_config.nfsv3_enabled
  public_network_access_enabled = local.final_storage_config.public_network_access_enabled
  sftp_enabled                 = local.final_storage_config.sftp_enabled
  shared_access_key_enabled    = local.final_storage_config.shared_access_key_enabled

  queue_encryption_key_type = local.final_storage_config.queue_encryption_key_type
  table_encryption_key_type = local.final_storage_config.table_encryption_key_type
  min_tls_version           = local.final_storage_config.min_tls_version
  tags                      = local.final_storage_config.tags

  blob_properties {
  versioning_enabled       = local.final_storage_config.blob_versioning_enabled
  change_feed_enabled      = local.final_storage_config.blob_change_feed_enabled
  last_access_time_enabled = local.final_storage_config.last_access_time_enabled

  delete_retention_policy {
    days = local.final_storage_config.blob_soft_delete_retention_days
  }
}


  share_properties {
    retention_policy {
      days = local.final_storage_config.share_retention_days
    }
  }
}
