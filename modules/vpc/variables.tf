variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

/*variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}*/

variable "subnet_cidr" {
    description = "Subnet Cidrs"
    type = list(string)
}
