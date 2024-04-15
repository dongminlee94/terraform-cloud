resource "aws_eip" "eip" {
  count = var.eip_enable ? 1 : 0

  instance = var.eip_use_instance ? var.eip_instance_id : null

  tags = {
    Name = var.eip_name
  }
}
