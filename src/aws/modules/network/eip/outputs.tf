output "eip_id" {
  value = var.eip_enable ? aws_eip.eip[0].id : ""
}
