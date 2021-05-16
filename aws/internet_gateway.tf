resource "aws_internet_gateway" "default" {
  depends_on = [
    aws_vpc.default
  ]

  vpc_id = aws_vpc.default.id
  tags = {
    Name = var.project_name
  }
}