module "iam" {
  source = "../../modules/iam"

  display_name         = "devops"
  role_definition_name = "Contributor"
}
