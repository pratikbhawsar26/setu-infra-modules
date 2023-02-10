output "name" {
  value       = aws_db_instance.db_instance.name
  description = "DB instance name"
}

output "arn" {
  value       = aws_db_instance.db_instance.arn
  description = "DB arn"
}

output "endpoint" {
  value       = aws_db_instance.db_instance.endpoint
  description = "The connection endpoint in address:port format."
}