resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.iti.id
  cidr_block = var.public1_subnet_cidr
    map_public_ip_on_launch = true
    # availability_zone = "us-east-1a"
    availability_zone = var.az1
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.iti.id
  cidr_block = var.public2_subnet_cidr
    map_public_ip_on_launch = true
    availability_zone = var.az2
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.iti.id
  cidr_block = var.private1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az1
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.iti.id
  cidr_block = var.private2_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az2
  tags = {
    Name = var.name
  }
}