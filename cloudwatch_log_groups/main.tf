resource "aws_cloudwatch_log_group" "log_group" {
  name         = var.group_name
  tags         = var.tags
}
