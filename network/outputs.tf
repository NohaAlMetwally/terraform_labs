output "cide_vpc" {
  value = aws_vpc.terraform_vpc.id
}

output "subnet_public1_cidr" {
  value = aws_subnet.subnet_public1_tf.id
}

output "subnet_public2_cidr" {
  value = aws_subnet.subnet_public2_tf.id
}

output "subnet_private1_cidr" {
  value = aws_subnet.subnet_private1_tf.id
}

output "subnet_private2_cidr" {
  value = aws_subnet.subnet_private2_tf.id
}
