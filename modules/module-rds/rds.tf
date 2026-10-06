resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  identifier           = var.identifier
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  skip_final_snapshot  = var.skip_final_snapshot
  db_subnet_group_name = aws_db_subnet_group.dbsubgrp.name  
  availability_zone    = var.availability_zone  
  depends_on = [ aws_db_subnet_group.dbsubgrp ]

   tags = {
    Name        = var.rds_name
    Environment = var.rds_environment
    
  }
}



resource "aws_db_subnet_group" "dbsubgrp" {
  name       = var.dbsubgroup_name
  subnet_ids = var.subnet_ids
}

