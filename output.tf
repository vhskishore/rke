#RKE Master Nodes IP Addresses
output "master-1" {
  value = aws_instance.rke_master_instance.0.public_ip
}

output "master-2" {
  value = aws_instance.rke_master_instance.1.public_ip
}

output "master-3" {
  value = aws_instance.rke_master_instance.2.public_ip
}

#RKE Worker Nodes IP Addresses
output "worker-1" {
  value = aws_instance.rke_worker_instance.0.public_ip
}

output "worker-2" {
  value = aws_instance.rke_worker_instance.1.public_ip
}

output "worker-3" {
  value = aws_instance.rke_worker_instance.2.public_ip
}