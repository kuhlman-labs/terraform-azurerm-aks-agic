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
  source                         = "./modules/aks_agic"
  environment                    = var.environment
  region                         = var.region
  virtual_network_resource_group = module.network_isolated.virtual_network_resource_group_name
  virtual_network_name           = module.network_isolated.virtual_network_name
  address_prefix_agw             = var.address_prefix_agw
  address_prefix_aks             = var.address_prefix_aks
  client_secret                  = var.client_secret
  app_id                         = var.app_id
  object_id                      = var.object_id
  dns_service_ip                 = var.dns_service_ip
  docker_bridge_cidr             = var.docker_bridge_cidr
  service_cidr                   = var.service_cidr
  tags                           = var.tags
}