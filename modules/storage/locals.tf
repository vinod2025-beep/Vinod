locals {
  default_storage_config = {
    access_tier                       = "Hot"
    account_kind                      = "StorageV2"
    account_replication_type          = "GRS"
    account_tier                      = "Standard"
    allow_nested_items_to_be_public   = true
    cross_tenant_replication_enabled  = false
    default_to_oauth_authentication   = false
    https_traffic_only_enabled        = true
    infrastructure_encryption_enabled = false
    is_hns_enabled                    = false
    large_file_share_enabled          = false
    local_user_enabled                = true
    min_tls_version                   = "TLS1_2"
    nfsv3_enabled                     = false
    public_network_access_enabled     = true
    sftp_enabled                      = false
    shared_access_key_enabled         = true
    queue_encryption_key_type         = "Service"
    table_encryption_key_type         = "Service"
    tags                              = {}
    blob_versioning_enabled           = false
    blob_change_feed_enabled          = false
    last_access_time_enabled          = false
    blob_soft_delete_retention_days   = 7
    share_retention_days              = 7
    
  }

  final_storage_config = merge(
    local.default_storage_config,
    var.storage_override
  )

  storage_name = lower(
    substr(
      replace(
        "st${var.region}${var.environment}${var.appname}${var.suffix}",
        "-",
        ""
      ),
      0,
      24
    )
  )
}
