module "network" {
  source = "./network"
  cide_vpc = var.cide_vpc
  subnet_public1_cidr = var.subnet_public1_cidr
  subnet_public2_cidr = var.subnet_public2_cidr
  subnet_private1_cidr = var.subnet_private1_cidr
  subnet_private2_cidr = var.subnet_private2_cidr
  region = var.region
  az_1 = var.az_1
  az_2 = var.az_2

}