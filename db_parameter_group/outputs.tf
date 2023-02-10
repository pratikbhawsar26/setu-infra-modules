output "name" {
  value       = aws_db_parameter_group.parameter_group.id
  description = "The db parameter group name"
}

output "arn" {
  value       = aws_db_parameter_group.parameter_group.arn
  description = "The ARN of the db parameter group"
}