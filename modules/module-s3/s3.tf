resource "aws_s3_bucket" "s3" {
    count = length(var.s3_bucket)
     bucket = "demo-${var.s3_bucket[count.index]}"
    
   tags = {
    Environment = var.s3_bucket_env_tag
  }
}

