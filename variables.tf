variable "gcp_project" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, staging)"
  default     = "dev"
}

variable "vpc_name" {
  type        = string
  description = "VPC network name"
  default     = "production-vpc"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Auto-create subnetworks"
  default     = false
}