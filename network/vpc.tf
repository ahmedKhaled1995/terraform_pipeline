resource "aws_vpc" "iti" {
  cidr_block = var.cidr
  # cidr_block = var.cidr
  enable_dns_support = true
  
  tags = {
      Name = var.name
  }
}