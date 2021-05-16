resource "aws_db_subnet_group" "default" {
  subnet_ids = [
    aws_subnet.public-1.id,
    aws_subnet.public-2.id,
    aws_subnet.private-1.id,
    aws_subnet.private-2.id
  ]


  ame_prefix = var.project_name

}