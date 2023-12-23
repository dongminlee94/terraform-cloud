resource "google_service_account" "gce_sa" {
  account_id   = "gce-${var.account_id}"
  display_name = "gce-${var.display_name}"
}

resource "google_service_account" "gke_sa" {
  account_id   = "gke-${var.account_id}"
  display_name = "gke-${var.display_name}"
}
