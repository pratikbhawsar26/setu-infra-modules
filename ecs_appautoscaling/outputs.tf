output "resource_id" {
    value = aws_appautoscaling_target.ecs_target.resource_id
    description = "Resource ID of App Autoscaling Target"
  
}

output "scalable_dimension" {
    value = aws_appautoscaling_target.ecs_target.scalable_dimension
    description = "The scalable dimension of the scalable target"
}

output "service_namespace" {
    value = aws_appautoscaling_target.ecs_target.service_namespace
    description = "The AWS service namespace of the scalable target"
}