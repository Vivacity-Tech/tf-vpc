output "vpc_id" {
  value       = local.network_id
  description = "VPC network ID"
}

output "vpc_name" {
  value       = var.manage_network ? google_compute_network.vpc[0].name : data.google_compute_network.existing[0].name
  description = "VPC network name"
}

output "vpc_self_link" {
  value       = var.manage_network ? google_compute_network.vpc[0].self_link : data.google_compute_network.existing[0].self_link
  description = "VPC self link"
}

output "app_subnet_id" {
  value       = google_compute_subnetwork.app_subnet.id
  description = "App subnet ID"
}

output "app_subnet_self_link" {
  value       = google_compute_subnetwork.app_subnet.self_link
  description = "App subnet self link"
}

output "db_subnet_id" {
  value       = google_compute_subnetwork.db_subnet.id
  description = "Database subnet ID"
}

output "db_subnet_self_link" {
  value       = google_compute_subnetwork.db_subnet.self_link
  description = "Database subnet self link"
}

output "gke_subnet_id" {
  value       = google_compute_subnetwork.gke_subnet.id
  description = "GKE subnet ID"
}

output "gke_subnet_self_link" {
  value       = google_compute_subnetwork.gke_subnet.self_link
  description = "GKE subnet self link"
}
