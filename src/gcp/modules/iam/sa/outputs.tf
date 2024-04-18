output "service_account_email" {
  value = var.sa_enable ? google_service_account.sa[0].email : ""
}
