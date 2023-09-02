module "service_account_global" {
  source = "../../modules/iam"

  account_id   = "sa-global"
  display_name = "sa-global"
}
