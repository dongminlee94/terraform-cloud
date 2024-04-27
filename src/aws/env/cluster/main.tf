module "iam_service_role" {
  source = "../../modules/iam/role"

  role_enable = true
  role_name   = "eks-service-role"

  policy_document_service_identifiers = ["eks.amazonaws.com"]

  role_policy_attachment_enable = true
  role_policy_attachment_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSServicePolicy",
  ]

  instance_profile_enable = false
  instance_profile_name   = ""
}

module "iam_nodes_role" {
  source = "../../modules/iam/role"

  role_enable = true
  role_name   = "eks-nodes-role"

  policy_document_service_identifiers = ["ec2.amazonaws.com"]

  role_policy_attachment_enable = true
  role_policy_attachment_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
  ]

  instance_profile_enable = true
  instance_profile_name   = "eks-profile"
}

module "eks_cluster" {
  source = "../../modules/computing/eks/cluster"

  subnet_names = ["private-subnet-0", "private-subnet-1", "private-subnet-2"]

  cluster_enable                  = true
  cluster_name                    = "eks-cluster"
  service_role_arn                = module.iam_service_role.iam_role_arn
  cluster_version                 = "1.29"
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true
}

module "eks_node_group" {
  source = "../../modules/computing/eks/node_group"

  subnet_names = ["private-subnet-0", "private-subnet-1", "private-subnet-2"]
  cluster_name = module.eks_cluster.eks_cluster_name

  node_group_enable = true
  node_group_name   = "eks-node-group"
  node_role_arn     = module.iam_nodes_role.iam_role_arn

  node_group_ami            = "AL2_x86_64"
  node_group_instance_types = ["m6a.xlarge"]
  node_group_disk_size      = 50

  node_group_desired_size    = 0
  node_group_min_size        = 0
  node_group_max_size        = 5
  node_group_max_unavailable = 1
}

module "autoscaling_group" {
  source = "../../modules/computing/eks/autoscaling_group"

  autoscaling_group_tag_enable = true
  cluster_name                 = module.eks_cluster.eks_cluster_name
  node_group_name              = module.eks_node_group.eks_node_group_name

  depends_on = [module.eks_node_group]
}
