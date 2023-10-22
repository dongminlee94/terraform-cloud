module "iam" {
  source = "../../modules/iam"

  display_name         = "vm_app"
  role_definition_name = "Contributor"
}
