output "instance_publicip" {
  value = aws_instance.ec2vm.public_ip
}

output "instance_publicdns" {
  value = aws_instance.ec2vm.public_dns
}