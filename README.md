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

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.39.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->