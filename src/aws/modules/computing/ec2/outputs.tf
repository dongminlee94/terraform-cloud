output "instance_id" {
  value = var.instance_enable ? aws_instance.instance[0].id : ""
}
