module "network" {
  source = "../../modules/network"

  network_id = var.network_id
  zone       = var.zone
  cidr_list  = var.cidr_list
  bastion_id = module.servers.bastion_id
}

module "servers" {
  source = "../../modules/servers"

  env        = var.env
  network_id = var.network_id
  zone       = var.zone
  template   = var.template
}
