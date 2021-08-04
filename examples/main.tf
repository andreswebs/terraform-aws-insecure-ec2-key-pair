module "ec2_keypair" {
  source             = "github.com/andreswebs/terraform-aws-insecure-ec2-key-pair"
  key_name           = "demo-ssh"
  ssm_parameter_name = "/insecure-demo/ssh-key"
}