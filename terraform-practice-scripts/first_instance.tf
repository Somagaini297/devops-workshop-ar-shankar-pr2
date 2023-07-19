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