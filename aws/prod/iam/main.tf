module "iam" {
  source = "../../modules/iam"

  ec2_role_name    = "ec2_role"
  ec2_profile_name = "ec2_profile"

  eks_service_role_name = "eks_service_role"
  eks_service_role_policy = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSServicePolicy",
  ]

  eks_nodes_role_name = "eks_nodes_role"
  eks_nodes_role_policy = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
  ]
  eks_nodes_profile_name = "eks_profile"
}
