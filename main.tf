resource "google_compute_network" "vpc" {
  name                    = "${var.vpc_name}-${var.environment}"
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "app_subnet" {
  name          = "app-subnet-${var.environment}"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc.id
  region        = var.gcp_region
}

resource "google_compute_subnetwork" "db_subnet" {
  name          = "db-subnet-${var.environment}"
  ip_cidr_range = "10.0.2.0/24"
  network       = google_compute_network.vpc.id
  region        = var.gcp_region
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "gke-subnet-${var.environment}"
  ip_cidr_range = "10.0.3.0/24"
  network       = google_compute_network.vpc.id
  region        = var.gcp_region
}
