data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = [local.ami_owner_alias]


  filter {
    name   = "owner-alias"
    values = [local.ami_owner_alias]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}