module "sg" {
  source = "../../modules/sg"

  vpc_name = "vpc"
  sg_name  = "sg"
}
