locals {
  # aws region
  region = "us-east-1"

  # creator
  creator = "JoseB"

  # managed by Terraform
  managed_by = "Terraform"

  # general tags 
  general_tags = {
    Creator   = local.creator
    ManagedBy = local.managed_by
  }

  # key pair
  key_pair = {
    # key pair name
    name = "${local.creator}-Key-Pair"
  }

  #instance
  instance = {
    # image owner alias
    ami_owner_alias = "amazon"

    # instance type 
    instance_type = "t2.micro"

    # shutdown behaviors
    shutdown_behaviors = ["stop", "terminate"]

    # instance name
    name = "${local.creator}-EC2-Demo"

  }
}