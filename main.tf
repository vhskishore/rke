provider "aws" {
  
}

resource "aws_vpc" "rke-vpc" {
  cidr_block = var.cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpcName}"
  }
}

resource "aws_subnet" "rke-Public-Subnet" {
  vpc_id = "${aws_vpc.rke-vpc.id}"
  cidr_block = var.publicSubnetCidr
  availability_zone = var.publicSubnetZone
  tags = {
    Name = "${var.publicSubnetName}"
  }  
}

resource "aws_internet_gateway" "rke-INGW" {
    vpc_id = "${aws_vpc.rke-vpc.id}"
    tags = {
      Name = var.rkeIngwName
    }
}

resource "aws_route_table" "rke-Public-Route" {
  vpc_id = "${aws_vpc.rke-vpc.id}"
  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.rke-INGW.id}"
  }
}

resource "aws_route_table_association" "rke-RT-Public" {
  subnet_id = aws_subnet.rke-Public-Subnet.id
  route_table_id = aws_route_table.rke-Public-Route.id
}

resource "aws_security_group" "rke-Public-aws_security_group" {
  name = "Public_Security_Group"
  description = "Allow RKE servers to public"
  vpc_id = aws_vpc.rke-vpc.id
  ingress = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}