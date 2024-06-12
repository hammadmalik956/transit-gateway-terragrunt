
include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/tg-vpc/"
  extra_arguments "tfvars" {
    commands  = get_terraform_commands_that_need_vars()
    arguments = ["-var-file=terraform.tfvars"]
  }
}


