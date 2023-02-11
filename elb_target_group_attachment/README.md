<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb_target_group_attachment.target_group_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_instance_id"></a> [aws\_instance\_id](#input\_aws\_instance\_id) | List of instance id needs to be registered | `list(string)` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | port | `number` | n/a | yes |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | target\_group\_arn | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group_attachment_arn"></a> [target\_group\_attachment\_arn](#output\_target\_group\_attachment\_arn) | n/a |
<!-- END_TF_DOCS -->