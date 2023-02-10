output "secret_manager_name" {
  value = aws_secretsmanager_secret.secret.name
}

output "secret_manager_arn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "secret_id" {
  value = aws_secretsmanager_secret.secret.id
}
