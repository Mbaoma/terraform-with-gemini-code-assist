variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "bucket_name" {
  description = "the name of the bucket (must be globally unique)"
  type        = string
}

variable "location" {
  description = "The location of the bucket"
  type        = string
  default     = "US"
}