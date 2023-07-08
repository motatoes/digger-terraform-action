output "bucket_self_link" {
  description = "The created storage bucket"
  value       = [for x in module.cloud_bucket : x.bucket.self_link]
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = [for x in module.cloud_bucket : x.bucket.name]
}

output "bucket_id" {
  description = "The ID of the bucket"
  value       = [for x in module.cloud_bucket : x.bucket.id]
}

output "bucket_url" {
  description = "The url of the bucket"
  value       = [for x in module.cloud_bucket : x.bucket.url]
}