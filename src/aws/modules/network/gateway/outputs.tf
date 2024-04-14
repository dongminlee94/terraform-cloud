output "igw_id" {
  value = var.igw_enable ? aws_internet_gateway.igw[0].id : ""
}

output "nat_id" {
  value = var.nat_enable ? aws_nat_gateway.nat[0].id : ""
}
