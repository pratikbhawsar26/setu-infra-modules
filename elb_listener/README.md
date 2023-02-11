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
| [aws_lb_listener.http_listner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.https_listner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_http_listner_action_type"></a> [http\_listner\_action\_type](#input\_http\_listner\_action\_type) | http\_listner\_action\_type | `string` | n/a | yes |
| <a name="input_http_listner_redirect"></a> [http\_listner\_redirect](#input\_http\_listner\_redirect) | http\_listner\_redirect | `list(map(string))` | `[]` | no |
| <a name="input_http_listner_target_port"></a> [http\_listner\_target\_port](#input\_http\_listner\_target\_port) | http\_listner\_target\_port | `number` | n/a | yes |
| <a name="input_http_listner_target_protocol"></a> [http\_listner\_target\_protocol](#input\_http\_listner\_target\_protocol) | http\_listner\_target\_protocol | `string` | n/a | yes |
| <a name="input_http_listner_tg_arn"></a> [http\_listner\_tg\_arn](#input\_http\_listner\_tg\_arn) | http\_listner\_tg\_arn | `string` | `null` | no |
| <a name="input_https_listner_action_type"></a> [https\_listner\_action\_type](#input\_https\_listner\_action\_type) | https\_listner\_action\_type | `string` | n/a | yes |
| <a name="input_https_listner_certificate_arn"></a> [https\_listner\_certificate\_arn](#input\_https\_listner\_certificate\_arn) | https\_listner\_certificate\_arn | `string` | `null` | no |
| <a name="input_https_listner_fixed_response"></a> [https\_listner\_fixed\_response](#input\_https\_listner\_fixed\_response) | https\_listner\_fixed\_response | `list(map(string))` | `[]` | no |
| <a name="input_https_listner_ssl_policy"></a> [https\_listner\_ssl\_policy](#input\_https\_listner\_ssl\_policy) | https\_listner\_ssl\_policy | `string` | `null` | no |
| <a name="input_https_listner_target_port"></a> [https\_listner\_target\_port](#input\_https\_listner\_target\_port) | https\_listner\_target\_port | `number` | n/a | yes |
| <a name="input_https_listner_target_protocol"></a> [https\_listner\_target\_protocol](#input\_https\_listner\_target\_protocol) | https\_listner\_target\_protocol | `string` | n/a | yes |
| <a name="input_https_listner_tg_arn"></a> [https\_listner\_tg\_arn](#input\_https\_listner\_tg\_arn) | https\_listner\_tg\_arn | `string` | `null` | no |
| <a name="input_lb_arn"></a> [lb\_arn](#input\_lb\_arn) | The arn of LB to be used | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | lb\_listener\_name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_http_listener_id"></a> [http\_listener\_id](#output\_http\_listener\_id) | n/a |
| <a name="output_https_listener_id"></a> [https\_listener\_id](#output\_https\_listener\_id) | n/a |
<!-- END_TF_DOCS -->