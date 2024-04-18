output "gke_cluster_name" {
  value = var.gke_cluster_enable ? google_container_cluster.cluster[0].name : ""
}
