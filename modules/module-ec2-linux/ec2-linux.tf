

resource "aws_instance" "ec2_linux" {
  count          = length(var.linux_instance_name)
  ami            = var.linux_ami_id[count.index]
  instance_type  = var.linux_instance_type[count.index]
  subnet_id      = var.linux_subnet_id
 iam_instance_profile = var.iam_instance_profile[count.index]
  key_name       = var.ec2_key_pair
  vpc_security_group_ids = [var.aws_security_group_id]
  tags = {
    Name = "${var.ec2_env_tag}-${var.linux_instance_name[count.index]}"
  }
}




