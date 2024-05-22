variable "aws_region" {
  description = "AWS region to create resources"
  default     = "us-east-1"
  type        = string
}

variable "aws_vpc_name" {
  description = "Name of the VPC"
  default     = "live-vpc"
  type        = string
}

variable "aws_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_vpc_azs" {
  description = "Availability Zones for the VPC"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type        = set(string)
}

variable "aws_vpc_private_subnets" {
  description = "Private subnets for the VPC"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  type        = set(string)
}

variable "aws_vpc_public_subnets" {
  description = "Public subnets for the VPC"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  type        = set(string)
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Instance types for the EKS managed node groups"
  default     = ["t3.smal"]
  type        = set(string)
}

variable "aws_project_tags" {
  description = "Tags for the AWS resources"
  default = {
    Terraform   = "true"
    Environment = "prod"
  }
  type = map(any)
}

variable "aws_eks_name" {
  description = "Name of the EKS cluster"
  default     = "live-eks"
  type        = string

}

variable "eks_version" {
  description = "Version of the EKS cluster"
  default     = "1.29"
  type        = string

}