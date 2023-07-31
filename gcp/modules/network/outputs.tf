output "google_compute_subnetwork" {
  value = {
    "tf_gcp_prod" : google_compute_subnetwork.tf_gcp_prod
  }
}

output "google_compute_address" {
  value = {
    "tf_gcp_prod_1" : google_compute_address.tf_gcp_prod_1
    "tf_gcp_prod_2" : google_compute_address.tf_gcp_prod_2
    "tf_gcp_prod_3" : google_compute_address.tf_gcp_prod_3
  }
}
