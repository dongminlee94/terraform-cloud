resource "google_service_account" "service_account" {
  account_id   = var.sa_account_id
  display_name = var.sa_display_name
}

resource "google_project_iam_binding" "iam_binding" {
  project = var.iam_project_id
  role    = var.iam_role
  members = ["serviceAccount:${google_service_account.service_account.email}"]
}
