resource "aws_subnet" "subnet_public1_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet_public1_tf"
  }
}

resource "aws_subnet" "subnet_public2_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet_public2_tf"
  }
}

resource "aws_subnet" "subnet_private1_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "subnet_private1_tf"
  }
}

resource "aws_subnet" "subnet_private2_tf" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "subnet_private2_tf"
  }
}