output "instance_id" {
  value = var.ec2_enable ? aws_instance.ec2_instance[0].id : ""
}
