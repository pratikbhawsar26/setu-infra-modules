resource "aws_lb_listener_rule" "host_based_weighted_routing" {
    listener_arn            = var.https_listener_arn
    priority                = var.priority

    action {
        type                = var.action_type
        target_group_arn    = var.target_group_arn
    }

    condition {
        host_header {
            values          = var.hostheader
        }
    }
}