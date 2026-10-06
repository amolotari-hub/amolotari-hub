terraform {
  backend "s3" {
    bucket         = "demo-sdh-tf-bucket"  # Specify a globally unique bucket name
    key            = "terraform.tfstate"
    region         = "eu-west-1"  # Set the region of your S3 bucket
    encrypt        = true
  }
}
