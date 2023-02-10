resource "aws_secretsmanager_secret_version" "secrets" {
 secret_id     = var.secret_manager_id
 secret_string = var.secret_strings
}