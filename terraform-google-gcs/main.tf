data "google_kms_key_ring" "kms_key_ring" {
  for_each = { for x in var.list_of_cloud_buckets : x.bucket_name => x }
  name     = each.value.encryption.key_ring_name
  location = each.value.encryption.key_location
  project  = each.value.project_id
}

data "google_kms_crypto_key" "crypto_key" {
  for_each = { for x in var.list_of_cloud_buckets : x.bucket_name => x }
  name     = each.value.encryption.key_name
  key_ring = data.google_kms_key_ring.kms_key_ring[each.value.bucket_name].id
}

module "cloud_bucket" {
  for_each           = { for x in var.list_of_cloud_buckets : x.bucket_name => x }
  source             = "./modules/simple_bucket"
  name               = each.value.bucket_name
  project_id         = each.value.project_id
  labels             = each.value.labels
  location           = each.value.location
  log_bucket         = each.value.log_bucket
  force_destroy      = each.value.force_destroy
  encryption         = { "default_kms_key_name" : data.google_kms_crypto_key.crypto_key[each.value.bucket_name].id }
  iam_members        = each.value.iam_members
  lifecycle_rules    = each.value.lifecycle_rules
  bucket_policy_only = each.value.bucket_policy_only
}