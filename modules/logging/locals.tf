locals {
  default_law_config = {
    sku               = "PerGB2018"
    retention_in_days = 30
    daily_quota_gb    = null
    tags              = {}
  }

  final_law_config = merge(
    local.default_law_config,
    var.log_override
  )

  law_name = "law-${var.region}-${var.environment}-${var.appname}-${var.suffix}"
}
