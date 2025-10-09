terraform {
  required_providers { google = { source = "hashicorp/google", version = "~> 5.0" } }
}

resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  labels       = var.labels
  tags         = var.tags

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_gb
      type  = "pd-balanced"
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    # ephemeral public IP (omit for private-only)
    access_config {}
  }

  service_account {
    email  = var.instance_sa_email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  metadata = var.metadata
}
