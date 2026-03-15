resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.env}-igw"
  }
}
#####################################################
resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.env}-public-rt"
  }
}
#####################################################
resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
#####################################################
resource "aws_route_table_association" "public_subnet_1" {
  subnet_id      = var.subnet_id_PuA
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = var.subnet_id_PuB
  route_table_id = aws_route_table.public_rt.id
}

#############################################################################################
resource "aws_eip" "nat_eip_az1" {
  domain = "vpc"

  tags = {
    Name = "${var.env}-nat-eip-az1"
  }
}

resource "aws_eip" "nat_eip_az2" {
  domain = "vpc"

  tags = {
    Name = "${var.env}-nat-eip-az2"
  }
}
########################################################
resource "aws_nat_gateway" "nat_az1" {
  allocation_id = aws_eip.nat_eip_az1.id
  subnet_id     = var.subnet_id_PuA

  tags = {
    Name = "${var.env}-nat-az1"
  }
}

resource "aws_nat_gateway" "nat_az2" {
  allocation_id = aws_eip.nat_eip_az2.id
  subnet_id     = var.subnet_id_PuB
  tags = {
    Name = "${var.env}-nat-az2"
  }
}
#############Private route table############################
resource "aws_route_table" "private_rt_az1" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.env}-private-rt-az1"
  }
}

resource "aws_route_table" "private_rt_az2" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.env}-private-rt-az2"
  }
}
#################route to NAT##################################
resource "aws_route" "nat_route_az1" {
  route_table_id         = aws_route_table.private_rt_az1.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_az1.id
}

resource "aws_route" "nat_route_az2" {
  route_table_id         = aws_route_table.private_rt_az2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_az2.id
}
##################associate private subnets##########################
resource "aws_route_table_association" "private_subnet_1" {
  subnet_id      = var.subnet_id_PrA
  route_table_id = aws_route_table.private_rt_az1.id
}
resource "aws_route_table_association" "private_subnet_2" {
  subnet_id      = var.subnet_id_PrB
  route_table_id = aws_route_table.private_rt_az2.id
}
resource "aws_route_table_association" "private_subnet_3" {
  subnet_id      = var.subnet_id_PrC
  route_table_id = aws_route_table.private_rt_az1.id
}
resource "aws_route_table_association" "private_subnet_4" {
  subnet_id      = var.subnet_id_PrD
  route_table_id = aws_route_table.private_rt_az2.id
}
resource "aws_route_table_association" "private_subnet_5" {
  subnet_id      = var.subnet_id_PrE
  route_table_id = aws_route_table.private_rt_az1.id
}
resource "aws_route_table_association" "private_subnet_6" {
  subnet_id      = var.subnet_id_PrF
  route_table_id = aws_route_table.private_rt_az2.id
}
