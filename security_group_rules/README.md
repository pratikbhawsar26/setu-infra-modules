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
| [aws_security_group_rule.egress_rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      cidr_blocks  = list(string)<br>      description = string<br>    }))</pre> | n/a | yes |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      cidr_blocks  = list(string)<br>      description = string<br>    }))</pre> | n/a | yes |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | Security group ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->