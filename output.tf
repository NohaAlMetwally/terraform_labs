output "bastion_public_ip" {
 value = aws_instance.bastion_tf.public_ip 
}

output "public_key" {
    value = tls_private_key.instance.public_key_openssh
}

