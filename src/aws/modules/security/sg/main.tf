resource "aws_security_group" "sg" {
  count = var.sg_enable ? 1 : 0

  vpc_id = data.aws_vpc.vpc.id

  name        = var.sg_name
  description = var.sg_name

  tags = {
    Name = var.sg_name
  }
}

resource "aws_security_group_rule" "sg_rule_ingress" {
  count = var.sg_rule_ingress_enable ? 1 : 0

  description       = "ingress"
  type              = "ingress"
  security_group_id = aws_security_group.sg[0].id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["${var.sg_my_ip}/32"]
}

resource "aws_security_group_rule" "sg_rule_egress" {
  count = var.sg_rule_egress_enable ? 1 : 0

  description       = "egress"
  type              = "egress"
  security_group_id = aws_security_group.sg[0].id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
