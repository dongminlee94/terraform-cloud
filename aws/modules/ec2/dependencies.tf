data "aws_iam_role" "ec2_role" {
  name = var.dlm_ec2_role_name
}

data "aws_iam_instance_profile" "ec2_profile" {
  name = var.profile_name
}

data "aws_subnet" "subnet" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

data "aws_security_group" "sg" {
  filter {
    name   = "tag:Name"
    values = [var.sg_name]
  }
}
