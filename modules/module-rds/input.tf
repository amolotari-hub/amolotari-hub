variable "allocated_storage" { type = number }
variable "db_name" { type = string }
variable "engine" { type = string }
variable "engine_version" { type = string }
variable "identifier" {}
variable "instance_class" { type = string }
variable "username" { type = string }
variable "password" { type = string }
variable "skip_final_snapshot" { type = bool }
variable "rds_name" {}
variable "rds_environment" {}
variable "dbsubgroup_name" {}
variable "subnet_ids" {type = list(any)}
variable "availability_zone" {}
