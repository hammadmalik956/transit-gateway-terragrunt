name = "dev-my-vpc"
cidr = "10.1.0.0/16"

azs             = ["us-west-2a", "us-west-2b"]
private_subnets = ["10.1.0.0/24", "10.1.2.0/24"]
public_subnets  = ["10.1.101.0/24", "10.1.102.0/24"]

enable_vpn_gateway = false
enable_nat_gateway = false
single_nat_gateway = true
nat_gateway_tags = {
  "Name" = "my-vpc-nat"
}
tags = {
  Enviroment = "dev"
}