
# ec2 module
variable "linux_instance_name" { type = list(any)}
variable "linux_vpc_id" {}
variable "linux_ami_id" { type = list(any)}
variable "linux_instance_type" { type = list(any)}
variable "linux_subnet_id" {}
variable "iam_instance_profile" { type = list(any)}
variable "aws_security_group_id" {}
variable "ec2_env_tag" {}
variable "ec2_key_pair" {}
