# tf-vpc (Non-Production)

VPC infrastructure for dev and staging environments, managed via Terraform Cloud.

## Configuration

**Terraform Cloud Workspace**: `vpc-dev`

**Environment Variables** (set in TFC):
- `TF_VAR_gcp_project = vivacity-tech-dream-dev`
- `TF_VAR_gcp_region = us-central1`
- `TF_VAR_environment = dev` (for dev workspace)

## Resources

- VPC network with custom subnets
- App subnet (10.0.1.0/24)
- Database subnet (10.0.2.0/24)
- GKE subnet (10.0.3.0/24)

## Outputs

This module exports:
- `vpc_id` - VPC network ID
- `vpc_name` - VPC network name
- `app_subnet_id` - App subnet ID
- `db_subnet_id` - Database subnet ID
- `gke_subnet_id` - GKE subnet ID

## Dependencies

None (foundation module)

## Usage

1. Set up Terraform Cloud workspace: `vpc-dev`
2. Configure environment variables in TFC
3. Push to main branch to trigger apply

## Dependency Graph

```
vpc-dev
├── database-dev (consumes vpc outputs)
├── gce-dev (consumes vpc outputs)
└── gke-dev (consumes vpc outputs)
```