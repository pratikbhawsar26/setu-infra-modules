resource "aws_security_group_rule" "ingress_rules" {
  count             = length(var.ingress_rules)
  type              = var.ingress_rules[count.index].type
  from_port         = var.ingress_rules[count.index].from_port
  to_port           = var.ingress_rules[count.index].to_port
  protocol          = var.ingress_rules[count.index].protocol
  cidr_blocks       = var.ingress_rules[count.index].cidr_blocks
  description       = var.ingress_rules[count.index].description
  security_group_id = var.security_group_id
}

resource "aws_security_group_rule" "egress_rules" {
  count             = length(var.egress_rules)
  type              = var.egress_rules[count.index].type
  from_port         = var.egress_rules[count.index].from_port
  to_port           = var.egress_rules[count.index].to_port
  protocol          = var.egress_rules[count.index].protocol
  cidr_blocks       = var.egress_rules[count.index].cidr_blocks
  description       = var.egress_rules[count.index].description
  security_group_id = var.security_group_id
}