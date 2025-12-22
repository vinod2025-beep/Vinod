locals {
  default_rg_config = {
    tags = {}
  }

  final_rg_config = merge(
    local.default_rg_config,
    var.rg_override
  )

  rg_name = "rg-${var.region}-${var.environment}-${var.appname}-${var.suffix}"
}
