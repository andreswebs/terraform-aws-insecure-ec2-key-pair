variable "key_name" {
  type = string
  description = "EC2 key pair name"
}

variable "ssm_parameter_name" {
  type = string
  description = "Stores the private key."
}
