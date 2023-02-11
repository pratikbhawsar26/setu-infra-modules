<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blue-green"></a> [blue-green](#module\_blue-green) | ../blue_green | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_lb_target_group.target_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | e.g. `prod`, `dev`, `stage`) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | Port on which targets receive traffic, unless overridden when registering a specific target. | `number` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Namespace (e.g. `Falcon` or 'Magicleap' or 'Tech-Marketing') | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol to use for routing traffic to the targets. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the resource | <pre>object({<br>    Environment = string<br>    Creator = string<br>    Product = string<br>    Owner = string<br>  })</pre> | n/a | yes |
| <a name="input_target_health_check"></a> [target\_health\_check](#input\_target\_health\_check) | target\_health\_check | `list(map(string))` | `[]` | no |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | Type of target that you must specify when registering targets with this target group. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Identifier of the VPC in which to create the target group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tg_id"></a> [tg\_id](#output\_tg\_id) | n/a |
| <a name="output_tg_name"></a> [tg\_name](#output\_tg\_name) | n/a |
<!-- END_TF_DOCS -->