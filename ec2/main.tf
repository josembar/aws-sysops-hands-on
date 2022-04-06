# key pair to connect to instance
resource "aws_key_pair" "key_pair_demo" {
  key_name   = local.key_pair.name
  public_key = file("./key_demo.pub")
  tags = {
    Name = local.key_pair.name
  }
}

# instance creation
module "ec2_instance" {
  source                  = "../modules/ec2_instance"
  ami                     = data.aws_ami.amazon_linux_2.id
  instance_type           = local.instance.instance_type
  shutdown_behavior       = local.instance.shutdown_behaviors[1]
  disable_api_termination = false
  key_name                = aws_key_pair.key_pair_demo.id
  tags = {
    Name = local.instance.name
  }

}