resource "aws_lb_listener" "http_listner" {
    load_balancer_arn           = var.lb_arn
    port                        = var.http_listner_target_port
    protocol                    = var.http_listner_target_protocol

    default_action {
        type                    = var.http_listner_action_type
        target_group_arn        = var.http_listner_tg_arn
    }
}