module "ec2" {
  source = "../../modules/ec2"

  iam_role_name = "ec2_role"
  subnet_name   = "subnet"
  sg_name       = "sg"

  ec2_name          = "ec2"
  ec2_ami           = "ami-0ed99df77a82560e6"
  ec2_instance_type = "t2.medium"

  ec2_monitoring   = true
  ec2_dat          = true   # disable_api_termination
  ec2_instance_isb = "stop" # instance_initiated_shutdown_behavior

  ec2_volume_size   = 50
  ec2_ebs_optimized = true

  dlm_description            = "EBS backup of EC2 instance"
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
