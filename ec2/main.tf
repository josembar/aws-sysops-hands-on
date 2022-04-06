# instance creation

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = local.instance_type
  tags          = local.instance_tags

}