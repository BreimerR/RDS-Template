resource "aws_subnet" "public-1" {
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.default.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.super_school.names[0]
}

resource "aws_subnet" "public-2" {
  cidr_block              = "10.0.2.0/24"
  vpc_id                  = aws_vpc.default.id
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.super_school.names[1]
}

resource "aws_subnet" "private-1" {
  cidr_block        = "10.0.3.0/24"
  vpc_id            = aws_vpc.default.id
  availability_zone = data.aws_availability_zones.super_school.names[0]
}

resource "aws_subnet" "private-2" {
  cidr_block        = "10.0.4.0/24"
  vpc_id            = aws_vpc.default.id
  availability_zone = data.aws_availability_zones.super_school.names[1]
}