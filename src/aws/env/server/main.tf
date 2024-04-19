module "iam_role" {
  source = "../../modules/iam/role"

  role_enable = true
  role_name   = "ec2-role"

  policy_document_service_identifiers = ["ec2.amazonaws.com"]

  role_policy_attachment_enable      = false
  role_policy_attachment_policy_arns = []

  instance_profile_enable = true
  instance_profile_name   = "ec2-profile"
}

module "ec2" {
  source = "../../modules/computing/ec2"

  subnet_name = "public-subnet-0"
  sg_name     = "sg"

  key_pair_enable     = true
  key_pair_name       = "key-pair"
  key_pair_public_key = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUtvMEhtUWVOd3NyUWFJbnFBL2pVb05VUFZGQ0hZMDIzQU1yTnhNdTlzQnogZG9uZ21pbmxlZUBEb25nbWludWktTWFjQm9va0Fpci5sb2NhbAo="

  ec2_enable           = true
  ec2_ami              = "ami-0ed99df77a82560e6"
  ec2_instance_type    = "t2.medium"
  ec2_volume_size      = 50
  ec2_instance_name    = "ec2-instance"
  ec2_iam_profile_name = module.iam_role.instance_profile_name
  ec2_monitoring       = true
  ec2_dat              = true   # disable_api_termination
  ec2_instance_isb     = "stop" # instance_initiated_shutdown_behavior

  dlm_enable                 = true
  dlm_description            = "EBS backup of EC2 instance"
  dlm_ec2_role_arn           = module.iam_role.iam_role_arn
  dlm_state                  = "ENABLED"
  dlm_resource_types         = ["VOLUME"]
  dlm_schedule_name          = "DailyBackup"
  dlm_schedule_interval      = 24
  dlm_schedule_interval_unit = "HOURS"
  dlm_schedule_times         = ["18:00"]
  dlm_schedule_count         = 5
  dlm_schedule_tags_to_add   = "snapshot"
  dlm_schedule_copy_tags     = false
}

module "eip" {
  source = "../../modules/network/eip"

  eip_enable       = true
  eip_use_instance = true
  eip_instance_id  = module.ec2.instance_id
  eip_name         = "ec2-eip"
}
