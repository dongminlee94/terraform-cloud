output "subnet_cidr_blocks" {
  value = var.subnet_enable ? [for subnet in aws_subnet.subnet : subnet.cidr_block] : []
}

output "subnet_ids" {
  value = var.subnet_enable ? [for subnet in aws_subnet.subnet : subnet.id] : []
}
