# linux instance
module "ec2_linux" {
  source                = "./modules/module-ec2-linux"
  linux_vpc_id          = var.linux_vpc_id
  linux_instance_name   = var.linux_instance_name
  linux_ami_id          = var.linux_ami_id
  linux_instance_type   = var.linux_instance_type
  linux_subnet_id       = var.linux_subnet_id
  iam_instance_profile = var.iam_instance_profile
  aws_security_group_id = var.aws_security_group_id
  ec2_env_tag           = var.ec2_env_tag
  ec2_key_pair         = var.ec2_key_pair 
}

# S3 Buckets
module "s3" {
  source            = "./modules/module-s3"
  s3_bucket         = var.s3_bucket
  s3_bucket_env_tag = var.s3_bucket_env_tag
}



# RDS
module "rds" {
  source              = "./modules/module-rds"
  allocated_storage   = var.allocated_storage
  db_name             = var.db_name
  engine              = var.engine
  engine_version      = var.engine_version
  identifier          = var.identifier
  availability_zone   = var.availability_zone
  instance_class      = var.instance_class
  username            = var.username
  password            = var.password
  skip_final_snapshot = var.skip_final_snapshot
  #tags
  rds_name        = var.rds_name
  rds_environment = var.rds_environment

  dbsubgroup_name = var.dbsubgroup_name
  subnet_ids      = var.subnet_ids

}
