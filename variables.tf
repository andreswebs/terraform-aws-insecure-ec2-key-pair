variable "key_name" {
  type        = string
  description = "EC2 key pair name"
}

variable "ssm_parameter_name" {
  type        = string
  description = "Stores the private key."
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all created resources"
  default     = {}
}
