output "google_compute_subnetwork" {
  value = {
    "tf_gcp_prod" : google_compute_subnetwork.tf_gcp_prod
  }
}

output "google_compute_address" {
  value = {
    "tf_gcp_prod" : google_compute_address.tf_gcp_prod
  }
}
