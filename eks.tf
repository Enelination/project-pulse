# eks.tf
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.eks_cluster_name
  subnets         = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
  vpc_id          = aws_vpc.my_vpc.id
  cluster_version = "1.21"

  node_groups = {
    eks_nodes = {
      desired_capacity = var.eks_node_desired_capacity
      max_capacity     = var.eks_node_max_capacity
      min_capacity     = var.eks_node_min_capacity

      instance_type = var.eks_node_instance_type
    }
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
