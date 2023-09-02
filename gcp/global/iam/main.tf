module "service_account_compute" {
  source = "../../modules/iam"

  account_id   = "sa_compute"
  display_name = "sa_compute"
}
