resource "aws_lb_target_group_attachment" "target_group_attachment" {
    target_group_arn    = var.target_group_arn
    target_id           = var.aws_instance_id
    port                = var.port
}