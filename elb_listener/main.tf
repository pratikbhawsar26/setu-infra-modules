resource "aws_lb_listener" "http_listner" {
    load_balancer_arn           = var.lb_arn
    port                        = var.http_listner_target_port
    protocol                    = var.http_listner_target_protocol

    default_action {
        type                    = var.http_listner_action_type
        target_group_arn        = var.http_listner_tg_arn
        dynamic "redirect" {
            for_each = var.http_listner_redirect
            content {
                port            = redirect.value["port"]
                protocol        = redirect.value["protocol"]
                status_code     = redirect.value["status_code"]
                query           = redirect.value["query"]
            }
        }
    }
} 

resource "aws_lb_listener" "https_listner" {
    load_balancer_arn           = var.lb_arn
    port                        = var.https_listner_target_port
    protocol                    = var.https_listner_target_protocol
    ssl_policy                  = var.https_listner_ssl_policy
    certificate_arn             = var.https_listner_certificate_arn

    default_action {
        type                = var.https_listner_action_type
        target_group_arn    = var.https_listner_tg_arn
        dynamic "fixed_response" {
            for_each = var.https_listner_fixed_response
            content {
                content_type = fixed_response.value["content_type"]
                message_body = fixed_response.value["message_body"]
                status_code  = fixed_response.value["status_code"]
            }
        }
    }
}