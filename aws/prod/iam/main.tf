module "iam" {
  source = "../../modules/iam"

  ec2_role_name             = "ec2_role"
  ec2_instance_profile_name = "ec2_instance_profile"

  eks_service_role_name     = "eks_service_role"
  eks_nodes_role_name       = "eks_nodes_role"
  eks_instance_profile_name = "eks_instance_profile"
}
