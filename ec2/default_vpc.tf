# bring default vpc
data "aws_vpc" "default_vpc" {
  default = true
}