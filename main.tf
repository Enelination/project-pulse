# main.tf
provider "aws" {
  region = "us-west-2"  # Set your desired AWS region
}

module "vpc" {
  source = "./vpc"

  cidr_block           = "10.0.0.0/16"
  vpc_name             = "my-vpc"
  igw_name             = "my-igw"
  public_subnet_1_cidr = "10.0.1.0/24"
  public_subnet_2_cidr = "10.0.2.0/24"
}

module "eks" {
  source = "./eks"

  eks_cluster_name          = "my-eks-cluster"
  eks_node_desired_capacity = 2
  eks_node_max_capacity     = 3
  eks_node_min_capacity     = 1
  eks_node_instance_type    = "t2.micro"
}
