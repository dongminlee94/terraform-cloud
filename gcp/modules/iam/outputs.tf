output "service_account" {
    value = {
        "gce" : google_service_account.gce
    }
}