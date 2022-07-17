resource "aws_vpc" "terraform_vpc" {
  cidr_block = var.cide_vpc
     tags = {
    Name = "terraform_vpc"
  }
}
