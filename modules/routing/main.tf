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
  subnet_id      = var.subnet_id-PuA
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = var.subnet_id-PuB
  route_table_id = aws_route_table.public_rt.id
}

