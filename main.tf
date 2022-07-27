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

resource "aws_instance" "foo" {
  ami           = "ami-04dd0e149d2907d65"
  instance_type = "t3.large"
  public_ip     = data.terraform_remote_state.remote.outputs.public_ip
}

