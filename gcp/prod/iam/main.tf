module "iam" {
  source = "../../modules/iam"

  account_id   = "compute_sa"
  display_name = "compute_sa"
}
