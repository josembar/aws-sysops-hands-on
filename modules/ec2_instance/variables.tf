# input variables
variable "ami" {
  type        = string
  description = "AMI instance"

  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the instance"
  default     = {}
}

variable "shutdown_behavior" {
  type        = string
  description = "Shutdown behaviour"
  default     = "stop"

  validation {
    condition     = var.shutdown_behavior == "stop" || var.shutdown_behavior == "terminate"
    error_message = "Shutdown behavior can only be stop or terminate."
  }
}

variable "disable_api_termination" {
  type        = bool
  default     = false
  description = "value"

  validation {
    condition     = var.disable_api_termination == false || var.disable_api_termination == true
    error_message = "Disable termination can only be true or false."
  }
}

variable "key_name" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}