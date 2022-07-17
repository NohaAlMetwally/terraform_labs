
resource "aws_db_subnet_group" "rds_subnet_private" {
  name       = "rds_subnet_private"
  subnet_ids = [module.network.subnet_private1_cidr, module.network.subnet_private2_cidr]

  tags = {
    Name = "rds_subnet_private"
  }
}