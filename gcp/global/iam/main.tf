module "service_account_compute" {
  source = "../../modules/iam"

  account_id   = "sa-compute"
  display_name = "sa-compute"
}
