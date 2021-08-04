output "key_pair" {
  value = aws_key_pair.this
  sensitive = true
  description = "The EC2 key pair resource"
}

output "ssm_parameter" {
  value = aws_ssm_parameter.key_pair
  sensitive = true
  description = "The SSM parameter resource"
}
