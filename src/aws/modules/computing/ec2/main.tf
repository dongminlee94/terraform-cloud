resource "aws_key_pair" "key_pair" {
  count = var.key_pair_enable ? 1 : 0

  key_name   = var.key_pair_name
  public_key = base64decode(var.key_pair_public_key)
}

resource "aws_instance" "ec2_instance" {
  count = var.ec2_enable ? 1 : 0

  subnet_id              = data.aws_subnet.subnet.id
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  root_block_device {
    volume_size = var.ec2_volume_size
    tags = {
      Name = var.ec2_instance_name
    }
  }

  key_name             = aws_key_pair.key_pair[0].key_name
  iam_instance_profile = var.ec2_iam_profile_name

  monitoring                           = var.ec2_monitoring
  disable_api_termination              = var.ec2_dat
  instance_initiated_shutdown_behavior = var.ec2_instance_isb

  tags = {
    Name = var.ec2_instance_name
  }
}

resource "aws_dlm_lifecycle_policy" "ebs_snapshot_backup" {
  count = var.dlm_enable ? 1 : 0

  description        = var.dlm_description
  execution_role_arn = var.dlm_ec2_role_arn
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

      tags_to_add = {
        Purpose = var.dlm_schedule_tags_to_add
      }

      copy_tags = var.dlm_schedule_copy_tags
    }

    target_tags = {
      Name = var.ec2_instance_name
    }
  }
}
