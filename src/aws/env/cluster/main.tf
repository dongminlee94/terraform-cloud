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

  eks_subnet_names = ["private-subnet-0", "private-subnet-1", "private-subnet-2"]

  eks_cluster_enable                  = true
  eks_cluster_name                    = "eks-cluster"
  eks_service_role_arn                = module.iam_service_role.iam_role_arn
  eks_cluster_version                 = "1.29"
  eks_cluster_endpoint_public_access  = true
  eks_cluster_endpoint_private_access = true
}

module "eks_node_group" {
  source = "../../modules/computing/eks/node_group"

  eks_subnet_names = ["private-subnet-0", "private-subnet-1", "private-subnet-2"]
  eks_cluster_name = module.eks_cluster.eks_cluster_name

  eks_node_group_enable = true
  eks_node_group_name   = "eks-node-group"
  eks_node_role_arn     = module.iam_nodes_role.iam_role_arn

  eks_node_group_ami            = "AL2_x86_64"
  eks_node_group_instance_types = ["m6a.xlarge"]
  eks_node_group_disk_size      = 50

  eks_node_group_desired_size    = 0
  eks_node_group_min_size        = 0
  eks_node_group_max_size        = 5
  eks_node_group_max_unavailable = 1
}

module "eks_autoscaling_group" {
  source = "../../modules/computing/eks/autoscaling_group"

  eks_asg_tag_enable  = true
  eks_node_group_name = module.eks_node_group.eks_node_group_name
}
