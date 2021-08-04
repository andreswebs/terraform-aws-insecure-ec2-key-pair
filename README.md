# terraform-aws-insecure-ec2-key-pair

**Warning: DO NOT USE IN PRODUCTION**

**USED FOR DEMONSTRATION PURPOSES ONLY.**

[//]: # (BEGIN_TF_DOCS)
Creates an SSH key pair and stores the private key in
a `SecureString` SSM parameter (consider it insecure).

## Usage

Example:

```hcl
module "ec2_keypair" {
  source             = "github.com/andreswebs/terraform-aws-insecure-ec2-key-pair"
  key_name           = "demo-ssh"
  ssm_parameter_name = "/insecure-demo/ssh-key"
}
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | EC2 key pair name | `any` | n/a | yes |
| <a name="input_ssm_parameter_name"></a> [ssm\_parameter\_name](#input\_ssm\_parameter\_name) | Stores the private key. | `any` | n/a | yes |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair"></a> [key\_pair](#output\_key\_pair) | n/a |
| <a name="output_ssm_parameter"></a> [ssm\_parameter](#output\_ssm\_parameter) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.52.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 3.1.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.52.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ssm_parameter.key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
