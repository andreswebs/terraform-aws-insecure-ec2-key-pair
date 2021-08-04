/**
 * Creates an SSH key pair and stores the private key in
 * a `SecureString` SSM parameter (consider it insecure).
 */

terraform {
  required_version = ">= 1.0.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.52.0"
    }

    tls = {
      source = "hashicorp/tls"
      version = ">= 3.1.0"
    }

  }
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
}

resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
}

resource "aws_ssm_parameter" "key_pair" {
  name  = var.ssm_parameter_name
  type  = "SecureString"
  value = tls_private_key.this.private_key_pem
}
