resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge( var.common_tags , var.vpc_tags, {
    Name = local.Name
  }) 
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = merge( var.common_tags , var.igw_tags, {
    Name = local.Name
  })
}