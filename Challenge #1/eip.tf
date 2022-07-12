resource "aws_eip" "eip" {
  depends_on  = [module.ec2]
  instance    = module.ec2vm.id
  vpc         = true
}