resource "aws_instance" "bastion_tf" {
  ami                    = var.ami_type
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet_public1_tf.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = "EC2Tutorial"

  tags = {
    Name = "ec2_bastion_tf"
  }

}

resource "aws_instance" "application_tf" {
  ami                    = var.ami_type
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet_private1_tf.id
  vpc_security_group_ids = [aws_security_group.allow_ssh3000.id]
  key_name               = "EC2Tutorial"

  tags = {
    Name = "ec2_application_tf"
  }
}
