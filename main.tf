module "base_rg" {
  source = "./rg"

  region      = var.region
  environment = var.environment
  appname     = var.appname
  suffix      = var.suffix
  location    = var.location
}

module "backup_rg" {
  source = "./rg"

  region      = var.region
  environment = var.environment
  appname     = "backup"
  suffix      = "003"
  location    = var.location
}


module "storage_backup" {
  source = "./storage"

  region              = var.region
  environment         = var.environment
  appname             = "backup"
  suffix              = "002"
  location            = var.location
  resource_group_name = module.base_rg.name

}

module "storage_bck" {
  source = "./storage"

  region              = var.region
  environment         = var.environment
  appname             = "bck"
  suffix              = "002"
  location            = var.location
  resource_group_name = module.backup_rg.name

  storage_override = {
    blob_versioning_enabled          = true
    blob_change_feed_enabled         = true
    blob_soft_delete_retention_days  = 14
    cross_tenant_replication_enabled = false
  }
}


module "log_workspace" {
  source = "./loggging"

  region              = var.region
  environment         = var.environment
  appname             = "log"
  suffix              = var.suffix
  location            = var.location
  resource_group_name = module.base_rg.name
}

