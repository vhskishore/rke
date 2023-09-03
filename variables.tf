#VPC Variables
variable "rkeIngwName" {}
variable "cidr" {}

#Subnet Variables
variable "publicSubnetCidr" {}
variable "publicSubnetZone" {}
variable "publicSubnetName" {}
#Internet Gateway Variables
variable "rkeIngwName" {}

#RKE-Instance Variables
variable "rkeAMI" {}
variable "rkeAZ" {}
variable "rkeInstanceType" {}
variable "rkeKey" {}
variable "volumeSize" {}
variable "volumeType" {}
variable "deleteOnTermination" {}