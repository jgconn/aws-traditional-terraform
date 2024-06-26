variable "alb_name" {
  description = "Name of the ALB"
  type = string
}

variable "security_group_id" {
  description = "ID of the security group"
  type = string
}

variable "instance_port" {
  description = "Port number of the EC2 instance"
  type = number
}

variable "instance_id" {
  description = "ID of the EC2 instance"
  type = string
}

variable "vpc_id" {
  description = "ID of the virtual private network (VPC)"
  type = string
}

variable "subnet_id1" {
  description = "ID of the subnet"
  type = string
}

variable "subnet_id2" {
  description = "ID of the subnet"
  type = string
}

variable "acm_certificate_arn" {
  description = "ARN of the acm certificate"
  type = string
}