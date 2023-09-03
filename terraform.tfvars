#VPC Variables
vpcName = "RKE-VPC"
cidr = "192.168.0.0/16"

#Subnet Variables
publicSubnetCidr = "192.168.1.0/24"
publicSubnetZone = "us-east-1a"
publicSubnetName = "RKE-Public-Subnet"
#Internet Gateway Variables
rkeIngwName = "RKE-IGW"

#RKE-Instance Variables
rkeAMI = "ami-0261755bbcb8c4a84"
rkeAZ = "us-east-1a"
rkeInstanceType = "t3.medium"
rkeKey = "Macbook Air M1"

#Instance EC2 Volume Details
volumeSize = "15"
volumeType = "gp2"
deleteOnTermination = "true"

#NLB Variables
nlbName = "rke-nlb"
tgName = "rke-tg"
tfPort = "6443"
tgProtocol = "TCP"
listenerPort = "443"
listenerProtocol = "TCP"
