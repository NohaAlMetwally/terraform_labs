resource "aws_subnet" "subnet_public1_tf" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_public1_cidr
  availability_zone = var.az_1
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet_public1_tf"
  }
}

resource "aws_subnet" "subnet_public2_tf" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_public2_cidr
  availability_zone = var.az_1
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet_public2_tf"
  }
}

resource "aws_subnet" "subnet_private1_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.subnet_private1_cidr
  availability_zone = var.az_1

  tags = {
    Name = "subnet_private1_tf"
  }
}

resource "aws_subnet" "subnet_private2_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.subnet_private2_cidr
  availability_zone = var.az_2

  tags = {
    Name = "subnet_private2_tf"
  }
}

