
#aws region
variable "region" {}

# ec2 module
variable "linux_instance_name" { type = list(any) }
variable "linux_vpc_id" {}
variable "linux_ami_id" { type = list(any) }
variable "linux_instance_type" { type = list(any) }
variable "linux_subnet_id" {}
variable "iam_instance_profile" { type = list(any) }
variable "aws_security_group_id" {}
variable "ec2_env_tag" {}
variable "ec2_key_pair" {}

#s3_module
variable "s3_bucket" { type = list(any) }
variable "s3_bucket_env_tag" {}



# RDS 
variable "allocated_storage" { type = number }
variable "db_name" {}
variable "availability_zone" {}
variable "engine" {}
variable "engine_version" {}
variable "identifier" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "skip_final_snapshot" { type = bool }
variable "rds_name" {}
variable "rds_environment" {}
variable "dbsubgroup_name" {}
variable "subnet_ids" { type = list(any) }

