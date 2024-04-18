module "iam_sa" {
  source = "../../modules/iam/sa"

  sa_enable = true
  sa_name   = "gce-sa"
}

module "gce" {
  source = "../../modules/computing/gce"

  subnetwork_name = "subnetwork"

  gce_address_enable = true
  gce_address_name   = "gce-address"

  gce_instance_enable = true
  gce_instance_name   = "gce-instance"
  gce_machine_type    = "e2-medium"
  gce_zone            = "asia-northeast1-a"

  gce_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-focal-v20230724"
  gce_boot_disk_size  = 50

  gce_sa_email       = module.iam_sa.service_account_email
  gce_service_scopes = ["cloud-platform"]

  gce_user_name  = "ubuntu"
  gce_public_key = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUtvMEhtUWVOd3NyUWFJbnFBL2pVb05VUFZGQ0hZMDIzQU1yTnhNdTlzQnogZG9uZ21pbmxlZUBEb25nbWludWktTWFjQm9va0Fpci5sb2NhbAo="

  gce_tags = ["gcp"]

  rp_enable             = true
  rp_name               = "rp"
  rp_days_in_cycle      = 1
  rp_start_time         = "18:00"
  rp_max_retention_days = 5
  rp_label              = "snapshot"
}
