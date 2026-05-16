resource "google_storage_bucket" "private_multi_region_bucket" {
  name     = var.bucket_name
  location = var.location
  storage_class = "STANDARD"

  # Best Practice: Enable uniform bucket-level access for consistent IAM
  uniform_bucket_level_access = true

  # Best Practice: Prevent public access to the bucket
  public_access_prevention = "enforced"

  # Best Practice: Enable versioning to protect against accidental deletion
  versioning {
    enabled = true
  }

  # Best Practice: Abort incomplete multipart uploads after 7 days to reduce costs
  lifecycle_rule {
    action {
      type = "AbortIncompleteMultipartUpload"
    }
    condition {
      age = 7
    }
  }

  labels = {
    environment = "dev"
  }
}