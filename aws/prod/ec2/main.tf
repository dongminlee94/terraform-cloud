module "ec2" {
  source = "../../modules/ec2"

  instance_profile_name = "ec2_instance_profile"
  subnet_name           = "public-subnet-0"
  sg_name               = "sg"
  eip_name              = "eip"

  ec2_ami           = "ami-0ed99df77a82560e6"
  ec2_instance_type = "t2.medium"
  ec2_volume_size   = 50
  ec2_instance_name = "ec2_instance"

  ec2_key_name   = "ec2"
  ec2_public_key = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDN3BjUjB3VzVmRGIyZkhXZXduVGZQekc3dFg5YnB4UEcxOHR3L2dmU2JZT200aDhZV0ZDZ3NSSFVLbTc4QzRKNWZWMjd1R0NnYUFha1pSNzcydytZd2FRb3AzRnRyc2dVdmpwU0RhVkU3Y0dyTXVOZzVUc2NMZ1hEQTJONEJPcHpiNlpFY1g5d0dpNEErQ0lSay9VaGNoYjhNQnZCZzQwc3BQTENWSko0K2o1SEFnWnZpK3lIalF0K2RBVE4rTVZBMXZEWDNPSGRXQzhveVNGMmVQcGVFL3gwZVF0aERTazAwK1hwc2hrTDFrd1BkaXZHTk5WcDF2MkRhNTd0M3V2QmJwOXkraEQ2c0I4NER6NXVuMG5oQ1NEazVhM3NtamdrSmdCK2xiZm5ZRFBRZG5ZTGZZL3NOTW1IblFja3FBTkVka2ZYcjFJRjhBV1VHWk1NeXFvMHZUVnJlZzAxKzdWWjFjZUdrN0R2WUgrNU9XY05hRE1KbEk5Z0x6RTd4eEhrNVl1UjlOMUluR0d6NVlXWVVVanZReUsxN1M0aUZ1Y1NQdHRJck9NV0EyMWFMdHNXMEdzSHNEYm1hM0tmZlZvdURRV1dnY3c3ajFXeXlmbFB5MEU5NUxBdG5XUHhsNVcrN2JtWkFlYjlTc091bEQyeVNQUGxyM0I3b08ydS9GbjA9IGRvbmdtaW5sZWVARG9uZ21pbnMtTWFjQm9vay1Qcm8ubG9jYWwK"

  ec2_monitoring   = true
  ec2_dat          = true   # disable_api_termination
  ec2_instance_isb = "stop" # instance_initiated_shutdown_behavior

  dlm_description            = "EBS backup of EC2 instance"
  dlm_ec2_role_name          = "ec2_role"
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
