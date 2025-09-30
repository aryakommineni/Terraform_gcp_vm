provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file(var.credentials_file)
}

variable "project_id" {}
variable "region" {}
variable "zone" {}
variable "vm_name" {}
variable "machine_type" {}
variable "credentials_file" {}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
 HEAD
    network       = "default"
    network = "default"
 c62d5122e2d8aaf5c88f22f1d6a1aa1a4628f6d9
    access_config {}
  }
}

output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

