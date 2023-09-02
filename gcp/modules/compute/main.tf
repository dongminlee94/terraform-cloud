data "google_compute_subnetwork" "subnetwork" {
  name   = var.subnetwork_name
  region = var.compute_region
}

data "google_service_account" "service_account" {
  account_id = var.sa_account_id
  project    = var.sa_project_id
}

resource "google_compute_address" "address" {
  name   = var.address_name
  region = var.compute_region
}

resource "google_compute_instance" "instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnetwork.id

    access_config {
      nat_ip = google_compute_address.address.address
    }
  }

  service_account {
    email  = data.google_service_account.service_account.email
    scopes = var.sa_scopes
  }

  tags = var.tags

  metadata = {
    ssh-keys = "${var.subnetwork_name}:${base64decode(var.ssh_pub_key)}"
  }
}
