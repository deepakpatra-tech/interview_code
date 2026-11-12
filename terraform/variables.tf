variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zone-1" {
  type    = string
  default = "ap-south-1a"
}

variable "availability_zone-2" {
  type    = string
  default = "ap-south-1b"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}