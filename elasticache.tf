resource "aws_elasticache_cluster" "elasticach_tf" {
  cluster_id           = "cluster-tf"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.sub-group1.name
  security_group_ids   = [aws_security_group.sg-all.id]
}

resource "aws_elasticache_subnet_group" "sub-group1" {
  name       = "sub-group1"
  subnet_ids = [module.network.subnet_private1_cidr, module.network.subnet_private2_cidr]

  tags = {
    Name = "My DB subnet group"
  }
}