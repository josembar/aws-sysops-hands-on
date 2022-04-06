locals {
  # aws region
  region = "us-east-1"

  #instance
  instance = {
    # image owner alias
    ami_owner_alias = "amazon"

    # instance type 
    instance_type = "t2.micro"

    # shutdown behaviors
    shutdown_behaviors = ["stop", "terminate"]

    # instance tags
    instance_tags = {
      Name      = "Jose-EC2-Demo"
      Creator   = "JoseB"
      ManagedBy = "Terraform"
    }
  }
}