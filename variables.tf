variable "admin_password" {
  default   = ""
  sensitive = true
}

variable "aws_account_id" {
  type = string
  sensitive = true
}

variable "aws_account_name" {
  default = "aws"
}





}


variable aws_transit_cidr {
  default = "10.1.0.0/16"
}
