## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_bucket"></a> [cloud\_bucket](#module\_cloud\_bucket) | ./modules/simple_bucket | n/a |

## Resources

| Name | Type |
|------|------|
| [google_kms_crypto_key.crypto_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_crypto_key) | data source |      
| [google_kms_key_ring.kms_key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_key_ring) | data source |        

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_list_of_cloud_buckets"></a> [list\_of\_cloud\_buckets](#input\_list\_of\_cloud\_buckets) | n/a | <pre>list(object({<br>    project_id         = string<br>    bucket_name        = string<br>    location           = string<br>    labels             = map(string)<br>    log_bucket         = string<br>    bucket_policy_only = bool<br>    encryption = object({<br>      key_name      = string<br>      key_ring_name = string<br>      key_location  = string<br>    })<br>    force_destroy = bool<br>    # iam_members = list(object({<br>    #   role   = string<br>    #   member = string<br>    # }))<br>    lifecycle_rules = list(object({<br>      action    = any<br>      condition = any<br>    }))<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | The ID of the bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The name of the bucket |
| <a name="output_bucket_self_link"></a> [bucket\_self\_link](#output\_bucket\_self\_link) | The created storage bucket |
| <a name="output_bucket_url"></a> [bucket\_url](#output\_bucket\_url) | The url of the bucket |
PS C:\Users\HP\Documents\GitHub\terraform-google-cloud-storage> terraform-docs markdown .
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_bucket"></a> [cloud\_bucket](#module\_cloud\_bucket) | ./modules/simple_bucket | n/a |

## Resources

| Name | Type |
|------|------|
| [google_kms_crypto_key.crypto_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_crypto_key) | data source |      
| [google_kms_key_ring.kms_key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_key_ring) | data source |        

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_list_of_cloud_buckets"></a> [list\_of\_cloud\_buckets](#input\_list\_of\_cloud\_buckets) | n/a | <pre>list(object({<br>    project_id         = string<br>    bucket_name        = string<br>    location           = string<br>    labels             = map(string)<br>    log_bucket         = string<br>    bucket_policy_only = bool<br>    encryption = object({<br>      key_name      = string<br>      key_ring_name = string<br>      key_location  = string<br>    })<br>    force_destroy = bool<br>    # iam_members = list(object({<br>    #   role   = string<br>    #   member = string<br>    # }))<br>    lifecycle_rules = list(object({<br>      action    = any<br>      condition = any<br>    }))<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | The ID of the bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The name of the bucket |
| <a name="output_bucket_self_link"></a> [bucket\_self\_link](#output\_bucket\_self\_link) | The created storage bucket |
| <a name="output_bucket_url"></a> [bucket\_url](#output\_bucket\_url) | The url of the bucket |