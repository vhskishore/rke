resource "aws_instance" "rke_instance" {
  count =   3
  ami   = var.rkeAMI
  availability_zone = var.rkeAZ
  instance_type = var.rkeInstanceType
  subnet_id = aws_subnet.rke-Public-Subnet.id
  key_name = var.rkeKey
  vpc_security_group_ids = "${aws_security_group.rke-Public-aws_security_group.id}"
  associate_public_ip_address = true
  tags = {
    Name = "Name"
    Value = "RKE-Master"
  }
}