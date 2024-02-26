data "aws_vpc" "vpc" {
  tags = {
    Name = var.vpc_name
  }
}

data "http" "my_ip" {
  url = "http://ipinfo.io/ip"
}
