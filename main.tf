data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

#module.aviatrix-controller-build.public_ip

data "terraform_remote_state" "remote" {
  backend = "remote"

  config = {
    organization = "cloudsilverlining"
    workspaces = {
      name = "avx-mgmt"
    }
  }
}
