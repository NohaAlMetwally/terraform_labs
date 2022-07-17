resource "aws_eip" "lb" {

}

resource "aws_nat_gateway" "nat_gw_tf" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.subnet_public1_tf.id

  tags = {
    Name = "nat_gw_tf"
  }

}