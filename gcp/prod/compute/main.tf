module "compute" {
  source = "../../modules/compute"

  subnetwork_name = "subnetwork-global"
  compute_region  = "asia-northeast1"
  sa_account_id   = "sa-global"
  sa_project_id   = "nth-infusion-392203"
  sa_scopes       = ["cloud-platform"]
  address_name    = "address-global"

  instance_name = "compute-global"
  machine_type  = "e2-medium"
  zone          = "asia-northeast1-a"
  image         = "ubuntu-os-cloud/ubuntu-2004-focal-v20230724"
  tags          = ["firewall-allow-ssh"]
  user_name     = "global-user"
  ssh_pub_key   = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDN3BjUjB3VzVmRGIyZkhXZXduVGZQekc3dFg5YnB4UEcxOHR3L2dmU2JZT200aDhZV0ZDZ3NSSFVLbTc4QzRKNWZWMjd1R0NnYUFha1pSNzcydytZd2FRb3AzRnRyc2dVdmpwU0RhVkU3Y0dyTXVOZzVUc2NMZ1hEQTJONEJPcHpiNlpFY1g5d0dpNEErQ0lSay9VaGNoYjhNQnZCZzQwc3BQTENWSko0K2o1SEFnWnZpK3lIalF0K2RBVE4rTVZBMXZEWDNPSGRXQzhveVNGMmVQcGVFL3gwZVF0aERTazAwK1hwc2hrTDFrd1BkaXZHTk5WcDF2MkRhNTd0M3V2QmJwOXkraEQ2c0I4NER6NXVuMG5oQ1NEazVhM3NtamdrSmdCK2xiZm5ZRFBRZG5ZTGZZL3NOTW1IblFja3FBTkVka2ZYcjFJRjhBV1VHWk1NeXFvMHZUVnJlZzAxKzdWWjFjZUdrN0R2WUgrNU9XY05hRE1KbEk5Z0x6RTd4eEhrNVl1UjlOMUluR0d6NVlXWVVVanZReUsxN1M0aUZ1Y1NQdHRJck9NV0EyMWFMdHNXMEdzSHNEYm1hM0tmZlZvdURRV1dnY3c3ajFXeXlmbFB5MEU5NUxBdG5XUHhsNVcrN2JtWkFlYjlTc091bEQyeVNQUGxyM0I3b08ydS9GbjA9IGRvbmdtaW5sZWVARG9uZ21pbnMtTWFjQm9vay1Qcm8ubG9jYWwK"
}
