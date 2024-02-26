module "eks" {
  source = "../../modules/eks"

  eks_service_role_name = "eks_service_role"
  eks_nodes_role_name   = "eks_nodes_role"
  private_subnet_names  = ["private-subnet-0", "private-subnet-1", "private-subnet-2"]

  eks_name                            = "eks-cluster"
  eks_cluster_version                 = "1.29"
  eks_cluster_endpoint_public_access  = true
  eks_cluster_endpoint_private_access = true

  eks_node_group_ami            = "AL2_x86_64"
  eks_node_group_instance_types = ["m6a.xlarge"]
  eks_node_group_disk_size      = 50

  eks_node_group_desired_size    = 1
  eks_node_group_min_size        = 1
  eks_node_group_max_size        = 3
  eks_node_group_max_unavailable = 1

}
