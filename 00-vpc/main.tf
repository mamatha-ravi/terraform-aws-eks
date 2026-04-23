module "vpc"{
    # source = "../../terraform-aws-vpc"
    source = "git::https://github.com/mamatha-ravi/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
     private_subnet_tags = {
    "kubernetes.io/role/internal-elb"        = "1"
    "kubernetes.io/cluster/roboshop-dev"     = "shared"
  }
}