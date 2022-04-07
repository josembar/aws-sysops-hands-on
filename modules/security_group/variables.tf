variable "name" {
  type        = string
  description = "Name for security group"
}

variable "description" {
  type        = string
  description = "Security group description"
  default     = ""
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for security group"

  validation {
    condition     = substr(var.vpc_id, 0, 4) == "vpc-"
    error_message = "The VPC ID must start with \"vpc-\"."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags for security group"
  default     = {}
}
/*
variable "ingress_rules" {
  type = list(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of ingress rules"
}
*/
variable "egress_rules" {
  type = list(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of egress rules"
  default = [
    {
      port        = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}