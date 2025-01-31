# terraform.tfvars - atc

aws_region       = "us-east-2"
cluster_name     = "my-eks-cluster"
node_group_name  = "click-node-group"
instance_types   = ["t2.small"]
desired_size     = 1
max_size         = 1
min_size         = 1
max_unavailable  = 1

#tags = {
#  Name = "EKS_tuto"
#}