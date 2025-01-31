# variable.tf atc

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "click-node-group"
}

variable "instance_types" {
  description = "The instance type for the EKS node group"
  type        = list(string)
  default     = ["t2.small"]
}

variable "desired_size" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "max_unavailable" {
  description = "Maximum number of unavailable nodes during node group updates"
  type        = number
  default     = 1
}

#variable "tags" {
#  description = "Tags to apply to resources"
#  type        = map(string)
#  default = {
#    Name = "EKS_tuto"
#  }
#}