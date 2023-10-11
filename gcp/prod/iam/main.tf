module "iam" {
  source = "../../modules/iam"

  sa_account_id   = "compute-sa"
  sa_display_name = "compute-sa"

  iam_project_id = "nth-infusion-392203"
  iam_role       = "roles/compute.viewer"
}
