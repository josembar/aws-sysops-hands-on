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