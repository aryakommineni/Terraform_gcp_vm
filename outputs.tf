output "self_link"   { value = google_compute_instance.vm.self_link }
output "name"        { value = google_compute_instance.vm.name }
output "zone"        { value = google_compute_instance.vm.zone }
output "external_ip" { value = try(google_compute_instance.vm.network_interface[0].access_config[0].nat_ip, null) }
