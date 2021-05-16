resource "aws_security_group" "default" {
  name   = var.project_name
  vpc_id = aws_vpc.default.id

  ingress {
    from_port   = local.http
    protocol    = "TCP"
    to_port     = local.http
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = local.http
    protocol    = "TCP"
    to_port     = local.http
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = local.https
    protocol    = "TCP"
    to_port     = local.https
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = local.https
    protocol    = "TCP"
    to_port     = local.https
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = local.db
    protocol    = "TCP"
    to_port     = local.db
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = local.db
    protocol    = "TCP"
    to_port     = local.db
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = local.ssh
    protocol    = "TCP"
    to_port     = local.ssh
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = local.ssh
    protocol    = "TCP"
    to_port     = local.ssh
    cidr_blocks = ["0.0.0.0/0"]
  }
}