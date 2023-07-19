provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  ami                    = "ami-04823729c75214919"
  instance_type          = "t2.micro"
  key_name               = "jagadevops"
  vpc_security_group_ids = ["sg-072eb761c57545c5c"]
  tags = {
    Name = "Vprofile"
  }
}
resource "aws_security_group" "demo-sg" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "demo-sg"
  }
}
