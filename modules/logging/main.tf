resource "azurerm_log_analytics_workspace" "this" {
  name                = local.law_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku               = local.final_law_config.sku
  retention_in_days = local.final_law_config.retention_in_days
  daily_quota_gb    = local.final_law_config.daily_quota_gb

  tags = local.final_law_config.tags
}
