module "vpc" {  
  source     = "terraform-aws-modules/vpc/aws"
  name       = "testenv-vpc"
  cidr_block = "10.0.0.0/16"
  enable_nat_gateway  = true
  single_nat_gateway  = false
  enable_dns_hostname   = true
  enable_dns_support    = true

  public_subnets = ["10.0.1.0/24","10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24","10.0.20.0/24"]
  database_subnets = ["10.0.110.0/24","10.0.120.0/24"]
  azs = var.availability_zones
  
  create_database_subnet_group       = true
  create_database_subnet_route_table = true 
}


