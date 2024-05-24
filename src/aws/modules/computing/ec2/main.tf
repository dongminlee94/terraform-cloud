resource "aws_key_pair" "key_pair" {
  count = var.key_pair_enable ? 1 : 0

  key_name   = var.key_pair_name
  public_key = base64decode(var.key_pair_public_key)
}

resource "aws_instance" "instance" {
  count = var.instance_enable ? 1 : 0

  subnet_id              = data.aws_subnet.subnet.id
  vpc_security_group_ids = [data.aws_security_group.security_group.id]
  iam_instance_profile   = var.instance_profile_name

  key_name      = aws_key_pair.key_pair[0].key_name
  ami           = var.instance_ami
  instance_type = var.instance_type

  root_block_device {
    volume_size = var.instance_volume_size
  }

  ebs_optimized = var.instance_ebs_optimized

  user_data                   = var.instance_user_data_enable ? file("${path.module}/init.sh") : ""
  user_data_replace_on_change = var.instance_user_data_enable

  monitoring                           = var.instance_monitoring
  disable_api_termination              = var.instance_disable_api_termination
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior

  tags = {
    Name = var.instance_name
  }
}

resource "aws_dlm_lifecycle_policy" "dlm" {
  count = var.dlm_enable ? 1 : 0

  description        = var.dlm_description
  execution_role_arn = var.dlm_role_arn
  state              = var.dlm_state

  policy_details {
    resource_types = var.dlm_resource_types

    schedule {
      name = var.dlm_schedule_name

      create_rule {
        interval      = var.dlm_schedule_interval
        interval_unit = var.dlm_schedule_interval_unit
        times         = var.dlm_schedule_times
      }

      retain_rule {
        count = var.dlm_schedule_count
      }
    }

    target_tags = {
      Name = var.instance_name
    }
  }
}
