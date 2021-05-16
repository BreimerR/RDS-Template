resource "aws_route_table_association" "public-1" {

  depends_on = [
    aws_route_table.default,
    aws_subnet.public-1
  ]

  route_table_id = aws_route_table.default.id
  subnet_id      = aws_subnet.public-1.id

}

resource "aws_route_table_association" "public-2" {

  depends_on = [
    aws_route_table.default,
    aws_subnet.public-2
  ]

  route_table_id = aws_route_table.default.id
  subnet_id      = aws_subnet.public-2.id

}

resource "aws_route_table_association" "private-1" {

  depends_on = [
    aws_route_table.default,
    aws_subnet.private-1
  ]

  route_table_id = aws_route_table.default.id
  subnet_id      = aws_subnet.private-1.id

}

resource "aws_route_table_association" "private-2" {

  depends_on = [
    aws_route_table.default,
    aws_subnet.private-2
  ]

  route_table_id = aws_route_table.default.id
  subnet_id      = aws_subnet.private-2.id

}