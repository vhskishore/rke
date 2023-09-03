resource "aws_instance" "rke_instance" {
  count =   3
  ami   = var.rkeAMI
  availability_zone = var.rkeAZ
  instance_type = var.rkeInstanceType
  subnet_id = aws_subnet.rke-Public-Subnet.id
  key_name = var.rkeKey
  vpc_security_group_ids = ["${aws_security_group.rke-Public-aws_security_group.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "RKE-Master-${count.index}"
    ENV = "QA"
  }
  user_data = <<-EOF
        #!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
    root_block_device {
      volume_size = var.volumeSize
      volume_type = var.volumeType
      delete_on_termination = var.deleteOnTermination
    }
}