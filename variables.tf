variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
    description = "Region To Setup Stack"
}
variable "main_vpc_cidr" {
    description = "CIDR of the VPC"
    default = "10.0.0.0/16"
}
data "aws_availability_zones" "available" {}
 
variable "instancetype" {
    description = "sentry instance type"
    default = "t2.medium"
}

variable "keypair" {
    description = "ssh keypair"
    default = ""
}
