terraform {
  required_providers {
    couchbase-capella = {
      source  = "registry.terraform.io/couchbasecloud/couchbase-capella"
    }
  }
}

provider "couchbase-capella" {
  authentication_token = var.auth_token
}

# Create the bucket in an existing cluster
resource "couchbase-capella_bucket" "new_bucket" {
  name                       = "new-bucket"
  organization_id            = var.organization_id
  project_id                 = var.project_id
  cluster_id                 = var.cluster_id
  type                       = "couchbase"
  storage_backend            = "couchstore"
  memory_allocation_in_mb    = 100
  bucket_conflict_resolution = "seqno"
  durability_level           = "none"
  replicas                   = 1
  flush                      = false
  time_to_live_in_seconds    = 0
  eviction_policy            = "fullEviction"
}

# Stores the bucket name in an output variable
output "bucket" {
  value = couchbase-capella_bucket.new_bucket.name
}
