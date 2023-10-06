module "iam" {
  source = "../../modules/iam"

  ec2_role_name             = "ec2_role"
  ec2_instance_profile_name = "ec2_instance_profile"
}
