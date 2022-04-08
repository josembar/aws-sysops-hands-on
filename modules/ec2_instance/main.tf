# instance creation
resource "aws_instance" "instance" {
  ami                                  = var.ami
  instance_type                        = var.instance_type
  instance_initiated_shutdown_behavior = var.shutdown_behavior
  disable_api_termination              = var.disable_api_termination
  key_name                             = var.key_name
  vpc_security_group_ids               = var.vpc_security_group_ids
  tags                                 = var.tags
}