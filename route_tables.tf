resource "aws_route_table" "public" {
  vpc_id = aws_vpc.terraform_vpc.id

}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_tf.id
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.subnet_public1_tf.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.subnet_public2_tf.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.terraform_vpc.id

}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gw_tf.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.subnet_private1_tf.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.subnet_private2_tf.id
  route_table_id = aws_route_table.private.id
}