output "bastion_public_ip" {
 value = aws_instance.bastion_tf.public_ip 
}