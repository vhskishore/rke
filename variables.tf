#VPC Variables
variable "vpcName" {}
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

#NLB Variables
variable "nlbName" {}
variable "tgName" {}
variable "tfPort" {}
variable "tgProtocol" {}
variable "listenerPort" {}
variable "listenerProtocol" {}