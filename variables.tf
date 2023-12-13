# variables.tf
variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "eks_cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
}

variable "eks_node_desired_capacity" {
  description = "Desired capacity for EKS nodes"
  type        = number
}

variable "eks_node_max_capacity" {
  description = "Maximum capacity for EKS nodes"
  type        = number
}

variable "eks_node_min_capacity" {
  description = "Minimum capacity for EKS nodes"
  type        = number
}

variable "eks_node_instance_type" {
  description = "Instance type for EKS nodes"
  type        = string
}
