module "mc_aws_transit" {
  source = "git::https://github.com/terraform-aviatrix-modules/terraform-aviatrix-mc-transit"

  cloud                  = "AWS"
  cidr                   = var.aws_transit_cidr
  region                 = var.aws_region
  account                = "aws-account"
  enable_transit_firenet = true
  enable_segmentation    = true
}
