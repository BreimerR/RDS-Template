resource "aws_vpc" "default" {
  cidr_block           = "192.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = var.project_name
    Environment = local.environment
  }
}