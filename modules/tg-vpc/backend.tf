# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket = "hammad-terragrunt-vpc-us-west-2"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-west-2"
  }
}
