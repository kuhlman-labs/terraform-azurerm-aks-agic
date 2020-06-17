###
# solution composition
###

module "network_isolated" {
  source        = "./modules/network_isolated"
  environment   = var.environment
  region        = var.region
  address_space = var.address_space
  tags          = var.tags
}

module "aks_agic" {
  source        = "./modules/aks_agic"
  environment   = var.environment
  region        = var.region
  tags          = var.tags
}