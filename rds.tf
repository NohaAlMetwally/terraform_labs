resource "aws_db_instance" "rds_tf" {
allocated_storage = 20
identifier = "rds-terraform"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
db_name = "rds_tf"
username = "noha"
password = "nohanoha"
skip_final_snapshot    = true
db_subnet_group_name = aws_db_subnet_group.rds_subnet_private.id
  tags = {
    Name = "rds_tf"
  }
}