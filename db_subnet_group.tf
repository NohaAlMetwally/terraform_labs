
resource "aws_db_subnet_group" "rds_subnet_private" {
  name       = "rds_subnet_private"
  subnet_ids = [aws_subnet.subnet_private1_tf.id, aws_subnet.subnet_private2_tf.id]

  tags = {
    Name = "rds_subnet_private"
  }
}