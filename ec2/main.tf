# instance creation

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  ami               = data.aws_ami.amazon_linux_2.id
  instance_type     = local.instance.instance_type
  shutdown_behavior = local.instance.shutdown_behaviors[1]
  tags              = local.instance.instance_tags

}