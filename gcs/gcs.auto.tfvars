list_of_cloud_buckets = [
  {
    project_id         = "learn-gcp-cloud-adarsh"
    bucket_name        = "learn-gcpdevops-private-registry-9845"
    location           = "asia-south1"
    log_bucket         = "newvm20-bucket"
    bucket_policy_only = true
    labels = {
      "env" : "uat"
      "app" : "gcs-insta"
    }
    encryption = {
      "key_name" : "test",
      "key_ring_name" : "test"
      "key_location" : "asia-south1"
    }
    force_destroy   = true
    iam_members     = []
    lifecycle_rules = []
  }
]
