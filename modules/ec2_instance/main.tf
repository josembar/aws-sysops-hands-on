# instance creation
resource "aws_instance" "instance" {
  ami                                  = var.ami
  instance_type                        = var.instance_type
  instance_initiated_shutdown_behavior = var.shutdown_behavior
  disable_api_termination              = var.disable_api_termination
  tags                                 = var.tags
}