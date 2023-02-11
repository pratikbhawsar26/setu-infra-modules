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
| [aws_appautoscaling_target.ecs_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |

## Inputs

| Name | Description                                                                                        | Type | Default | Required |
|------|----------------------------------------------------------------------------------------------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | e.g. `prod`, `dev`, `stage`)                                                                       | `string` | n/a | yes |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | The max capacity of the scalable target                                                            | `number` | `2` | no |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | The min capacity of the scalable target                                                            | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource                                                                               | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Namespace (e.g. `Fastag` or `Customer Product`)                                                    | `string` | n/a | yes |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | The resource type and unique identifier string for the resource associated with the scaling policy | `string` | n/a | yes |
| <a name="input_scalable_dimension"></a> [scalable\_dimension](#input\_scalable\_dimension) | The scalable dimension of the scalable target                                                      | `string` | n/a | yes |
| <a name="input_service_namespace"></a> [service\_namespace](#input\_service\_namespace) | The AWS service namespace of the scalable target                                                   | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags of the service                                                                                | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id) | Resource ID of App Autoscaling Target |
| <a name="output_scalable_dimension"></a> [scalable\_dimension](#output\_scalable\_dimension) | The scalable dimension of the scalable target |
| <a name="output_service_namespace"></a> [service\_namespace](#output\_service\_namespace) | The AWS service namespace of the scalable target |
<!-- END_TF_DOCS -->