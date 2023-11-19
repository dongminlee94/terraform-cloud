module "eks" {
  source = "../../modules/eks"

  eks_service_role_name = "eks_service_role"
  eks_nodes_role_name   = "eks_nodes_role"

  subnet_ids = ["public-subnet-0", "public-subnet-1", "public-subnet-2"]
  sg_name    = "sg"

  eks_cluster_name            = "eks_cluster"
  eks_node_group_name         = "eks_node_group"
  eks_node_group_desired_size = 1
  eks_node_group_max_size     = 3
  eks_node_group_min_size     = 1
}
