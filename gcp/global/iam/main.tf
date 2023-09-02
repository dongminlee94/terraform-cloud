module "iam" {
  source = "../../modules/iam"

  account_id   = "sa-global"
  display_name = "sa-global"
}
