output "group_name" {
  description = "The name of the log group"
  value       = aws_cloudwatch_log_group.log_group.name
}

output "group_arn" {
  description = "The arn of the log group"
  value       = aws_cloudwatch_log_group.log_group.arn
}