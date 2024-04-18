resource "google_compute_address" "gce_address" {
  count = var.gce_address_enable ? 1 : 0

  name = var.gce_address_name
}

resource "google_compute_instance" "gce_instance" {
  count = var.gce_instance_enable ? 1 : 0

  name         = var.gce_instance_name
  machine_type = var.gce_machine_type
  zone         = var.gce_zone

  boot_disk {
    initialize_params {
      image = var.gce_boot_disk_image
      size  = var.gce_boot_disk_size
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnetwork.id

    access_config {
      nat_ip = google_compute_address.gce_address[0].address
    }
  }

  service_account {
    email  = var.gce_sa_email
    scopes = var.gce_service_scopes
  }

  tags = var.gce_tags

  metadata = {
    ssh-keys = "${var.gce_user_name}:${base64decode(var.gce_public_key)}"
  }
}

resource "google_compute_resource_policy" "gce_resource_policy" {
  count = var.rp_enable ? 1 : 0

  name = var.rp_name

  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = var.rp_days_in_cycle
        start_time    = var.rp_start_time
      }
    }

    retention_policy {
      max_retention_days = var.rp_max_retention_days
    }

    snapshot_properties {
      labels = {
        purpose = var.rp_label
      }
    }
  }
}
