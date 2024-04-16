output "vpc_id" {
  value = var.vpc_enable ? aws_vpc.vpc[0].id : ""
}
