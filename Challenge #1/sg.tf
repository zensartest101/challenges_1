resource "aws_security_group" "vpc_ssh" {
   name = "testenv-ssh"
   ingress {
     to_port     = 22
     from_port   = 22
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
     to_port     = 0
     from_port   = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
 }

resource "aws_security_group" "vpc_web" {
   name = "testenv-web"
   ingress {
     to_port     = 80
     from_port   = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
     to_port     = 0
     from_port   = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
 }