output "subnet_cidr_blocks" {
  value = [for subnet in aws_subnet.subnet : subnet.cidr_block]
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}
