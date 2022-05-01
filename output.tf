output "instance_public_ip" {
  value = "aws_instance.my-web[count.index].public_ip"
}

