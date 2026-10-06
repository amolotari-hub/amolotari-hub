#AWS region

region     = "eu-west-1"

#ec2_linux_module
linux_vpc_id          = "vpc-0c6e564f724562460"
linux_instance_name   = ["IDMC_Secure_Agent", "Data_Gateway", "Bounce_Server_Windows"]
linux_ami_id          = ["ami-053cc83c4975ad9af", "ami-099dd832a419672a0", "ami-068e767bdecd8ebb0"]
linux_instance_type   = ["t3.xlarge", "c5.2xlarge", "t3.large"]
linux_subnet_id       = "subnet-0b33a8d89ef1c06e6"
iam_instance_profile = ["sdh-idmc-EC2-S3buckets-Access","sdh-idmc-EC2-S3buckets-Access","EC2_SSM_Role"]
aws_security_group_id = "sg-0ae20357edfa1d62a"
ec2_env_tag           = "Demo"
ec2_key_pair          = "SDH-Test-Key-2023"


#s3_module
s3_bucket         = ["sdh-athena-output", "sdh-bronze-bucket", "sdh-gold-bucket", "sdh-landing-bucket", "sdh-silver-bucket"]
s3_bucket_env_tag = "demo"




# RDS 
allocated_storage   = 20
db_name             = "demo_db"
engine              = "postgres"
engine_version      = "15.3"
identifier          = "demo-sdh-db-1"
instance_class      = "db.t3.micro"
availability_zone     = "eu-west-1a"
username            = "postgres"
password            = "kH!v12sJ4);:"
skip_final_snapshot = true
#tags
rds_name        = "demo-sdh-db-1"
rds_environment = "demo"
#subnet group
subnet_ids      = ["subnet-0e84379e6e1efe34d", "subnet-0b33a8d89ef1c06e6", "subnet-0734f61f5e2895981", "subnet-0b229955328f54b4a"]
dbsubgroup_name = "demo-db-subnet-group"

