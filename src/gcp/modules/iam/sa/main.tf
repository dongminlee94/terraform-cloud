resource "google_service_account" "sa" {
  count = var.sa_enable ? 1 : 0

  account_id   = var.sa_name
  display_name = var.sa_name
}
