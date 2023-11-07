resource "aws_security_group" "sg" {
  vpc_id      = data.aws_vpc.vpc.id
  name        = var.sg_name
  description = var.sg_name

  tags = {
    Name = var.sg_name
  }
}

resource "aws_security_group_rule" "ingress_sg_rule" {
  description       = "ingress"
  type              = "ingress"
  security_group_id = aws_security_group.sg.id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress_sg_rule" {
  description       = "egress"
  type              = "egress"
  security_group_id = aws_security_group.sg.id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
