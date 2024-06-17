resource "aws_instance" "web" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids = [var.security_group_roboshop_all.ids]
  tags= var.tags
}
