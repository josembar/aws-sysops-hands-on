locals {
  # aws region
  region = "us-east-1"

  # image owner alias
  ami_owner_alias = "amazon"

  # instance type 
  instance_type = "t2.micro"

  # instance tags
  instance_tags = {
    Name      = "Jose-EC2-Demo"
    Creator   = "JoseB"
    ManagedBy = "Terraform"
  }
}