dependency "vpc_stag" {
  config_path = "../stag/vpc"
}

dependency "vpc_dev" {
  config_path = "../dev/vpc"
}

include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/tg-transit-gateway/"
  extra_arguments "tfvars" {
    commands  = get_terraform_commands_that_need_vars()
    arguments = ["-var-file=terraform.tfvars"]
  }

}
inputs = {
  vpc_attachments = {
    vpc_stag = {
      vpc_id               = dependency.vpc_stag.outputs.vpc_id
      subnet_ids           = dependency.vpc_stag.outputs.public_subnets
      vpc_route_table_ids  = dependency.vpc_stag.outputs.public_route_table_ids
      tgw_destination_cidr = dependency.vpc_dev.outputs.vpc_cidr_block
    }
    vpc_dev = {
      vpc_id               = dependency.vpc_dev.outputs.vpc_id
      subnet_ids           = dependency.vpc_dev.outputs.public_subnets
      vpc_route_table_ids  = dependency.vpc_dev.outputs.public_route_table_ids
      tgw_destination_cidr = dependency.vpc_stag.outputs.vpc_cidr_block
    }
  }
}
