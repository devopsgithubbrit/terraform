resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" {
      name        = var.sg-name
      description = var.sg-description

  ingress {
    description      = "Allow All ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description      = "Allow All ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }
}
