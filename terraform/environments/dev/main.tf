module "network" {
  source     = "../../modules/network"
  network_id = var.network_id
  zone       = var.zone
  cidr_list  = var.cidr_list
}
