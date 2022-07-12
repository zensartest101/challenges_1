resource "aws_instance" "ec2vm" {
   ami = date.aws_ami.linuxbox.id
   instance_type          =  var.instance_type[0]
   key_name               =  var.keypair_name
   vpc_security_group_ids =  ["aws_security_group.vpc_ssh.testenv-ssh", "aws_security_group.vpc_web.testenv-web"]
   count                  =  2
}