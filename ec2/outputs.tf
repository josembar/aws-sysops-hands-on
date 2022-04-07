output "instance_arn" {
  value = module.ec2_instance.instance_arn
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip
}

output "security_group_id" {
  value = module.security_group.security_group_id
}