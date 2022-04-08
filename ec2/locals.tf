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

  # cidr all destinations
  cidr_all_destinations = "0.0.0.0/0"

  # key pair
  key_pair = {
    # key pair name
    name = "${local.creator}-Key-Pair"
  }

  # ports
  ports = {
      ssh = 22
    }

  # protocols
  protocols = {
    tcp = "tcp"
    all = "-1"
  }

  # security group
  security_group = {
    name = "${local.creator}-SG"
    ingress_rules = [
      {
        port        = local.ports.ssh
        protocol    = local.protocols.tcp
        cidr_blocks = [local.cidr_all_destinations]
      }
    ]
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