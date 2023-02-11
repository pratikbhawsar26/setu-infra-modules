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
| [aws_lb.load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |

## Inputs

| Name | Description                                                                                                                   | Type | Default | Required |
|------|-------------------------------------------------------------------------------------------------------------------------------|------|---------|:--------:|
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | n/a                                                                                                                           | `string` | `"true"` | no |
| <a name="input_env"></a> [env](#input\_env) | e.g. `prod`, `dev`, `stage`)                                                                                                  | `string` | n/a | yes |
| <a name="input_idle_timeout"></a> [idle\_timeout](#input\_idle\_timeout) | The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60. | `number` | n/a | yes |
| <a name="input_internal"></a> [internal](#input\_internal) | If true, the LB will be internal.                                                                                             | `string` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | The type of load balancer to create.                                                                                          | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource                                                                                                          | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Namespace (e.g. `Fastag` or 'Customer Product')                                                            | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of security group IDs to assign to the LB.                                                                             | `list` | `[]` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | subnets                                                                                                                       | `list` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the resource                                                                                                         | <pre>object({<br>    Environment = string<br>    Creator = string<br>    Product = string<br>    Owner = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_dns_name"></a> [lb\_dns\_name](#output\_lb\_dns\_name) | n/a |
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | n/a |
| <a name="output_lb_name"></a> [lb\_name](#output\_lb\_name) | n/a |
<!-- END_TF_DOCS -->