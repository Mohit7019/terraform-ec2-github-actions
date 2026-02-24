variable "region" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "instance_type" {}
variable "key_name" {}
variable "instances" {
    description = "EC2 Instance map"
    type = map(string)
}