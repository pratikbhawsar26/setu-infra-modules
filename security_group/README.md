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
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      description = string<br>      cidr_blocks = optional(list(string))<br>      ipv6_cidr_blocks = optional(list(string))<br>      prefix_list_ids = optional(list(string))<br>      security_groups = optional(list(string))<br>    }))</pre> | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | e.g. `prod`, `dev`, `stage`) | `string` | n/a | yes |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      description = string<br>      cidr_blocks = optional(list(string))<br>      ipv6_cidr_blocks = optional(list(string))<br>      prefix_list_ids = optional(list(string))<br>      security_groups = optional(list(string))<br>    }))</pre> | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Namespace (e.g. `Falcon` or `Magicleap`) | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the inspector resource group | <pre>object({<br>    Creator = string    <br>  })</pre> | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
| <a name="output_security_group_name"></a> [security\_group\_name](#output\_security\_group\_name) | n/a |
<!-- END_TF_DOCS -->