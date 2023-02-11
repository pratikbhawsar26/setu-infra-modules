output "http_listener_id" {
    value = aws_lb_listener.http_listner.id
}

output "https_listener_id" {
    value = aws_lb_listener.https_listner.id
}