#------------------------------------------------------------------------------
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Feb-2022
#
# usage: create global parameters, exposed to all
#        Terragrunt modules in this repository.
#------------------------------------------------------------------------------
locals {
  platform_name              = "prod"
  platform_region            = "usa"
  shared_resource_identifier = "live"
  shared_resource_namespace  = "prod-usa-live"
  root_domain                = "schoolofrock.edu"
  admin_domain               = "k8s.schoolofrock.edu"
  aws_region                 = "us-east-1"
  account_id                 = "012345678912"

  tags = {
    Platform        = local.platform_name
    Platform-Region = local.platform_region
    Terraform       = "true"
  }

}

inputs = {
  platform_name    = local.platform_name
  platform_region  = local.platform_region
  aws_region       = local.aws_region
  account_id       = local.account_id
  root_domain      = local.root_domain
}
