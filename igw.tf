resource "aws_internet_gateway" "igw_tf" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "igw_tf"
  }
}