# tf-module-github-actions

## Local testing (partial)

Using the local invocation of the github actions runner [act](https://github.com/nektos/act) (requires docker)

_NOTE: for similar compatibility to runner use <https://github.com/nektos/act#alternative-runner-images> - massive image!_

add secrets using `act.secrets` with format:

```ini
AWS_ACCESS_KEY_ID=XXX
AWS_SECRET_ACCESS_KEY=YY
```

add env vars using `act.env` with format:

```ini
ENV_KEY1=env_value_1
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 1.1.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.39.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | `"ci-test-bucket-opsguru-987654321"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->