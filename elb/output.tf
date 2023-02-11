output "lb_id" {
    value = aws_lb.load_balancer.id
}

output "lb_dns_name" {
    value = aws_lb.load_balancer.dns_name
}

output "lb_name" {
    value = "${lookup(aws_lb.load_balancer.tags_all, "Name")}"
}