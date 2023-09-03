output "master-1" {
  value = aws_instance.rke_instance.*.public_ip
}