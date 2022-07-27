data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

module "mc_aws_transit" {
  #source = "git::https://github.com/terraform-aviatrix-modules/terraform-aviatrix-mc-transit"

  source                 = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version                = "2.1.6"
  cloud                  = "AWS"
  cidr                   = var.aws_transit_cidr
  region                 = var.aws_region
  account                = "aws-account"
  enable_transit_firenet = true
  enable_segmentation    = true
}
