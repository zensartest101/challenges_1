data "aws_ami" "linuxbox" {
   owners      = ["amazon"]
   most_recent = true
 
   filter {
     name   = "root-device-type"
     values = ["ebs"]
   }
   
   filter {
     name   = "name"
     values = ["amzn2-ami-xxxxxx-xxxx"]
   }
}