locals {
  aws_region = "us-west-2"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"
}
EOF
}
remote_state {
  backend = "s3"
  config = {
    bucket = "hammad-terragrunt-vpc-${local.aws_region}"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region = "${local.aws_region}"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

