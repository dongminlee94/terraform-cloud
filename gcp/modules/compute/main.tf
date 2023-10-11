data "google_compute_subnetwork" "subnetwork" {
  name = var.subnetwork_name
}

data "google_service_account" "service_account" {
  account_id = var.sa_account_id
}

resource "google_compute_address" "compute_address" {
  name = var.compute_address_name
}

resource "google_compute_instance" "compute_instance" {
  name         = var.compute_instance_name
  machine_type = var.compute_machine_type
  zone         = var.compute_zone

  boot_disk {
    initialize_params {
      image = var.compute_image
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnetwork.id

    access_config {
      nat_ip = google_compute_address.compute_address.address
    }
  }

  service_account {
    email  = data.google_service_account.service_account.email
    scopes = var.compute_service_scopes
  }

  tags = var.compute_tags

  metadata = {
    ssh-keys = "${var.compute_key_name}:${base64decode(var.compute_public_key)}"
  }
}

resource "google_compute_resource_policy" "compute_resource_policy" {
  name = var.rp_name

  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = var.rp_days_in_cycle
        start_time    = var.rp_start_time
      }
    }

    retention_policy {
      max_retention_days    = var.rp_max_retention_days
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }

    snapshot_properties {
      labels = {
        Purpose = var.rp_label
      }
    }
  }
}
