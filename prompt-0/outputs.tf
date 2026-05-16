output "bucket_name" {
  value       = google_storage_bucket.private_multi_region_bucket.name
  description = "The name of the created storage bucket."
}

output "bucket_url" {
  value       = google_storage_bucket.private_multi_region_bucket.url
  description = "The base URL of the bucket."
}