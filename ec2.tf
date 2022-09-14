provider "aws" {
  region     = "us-east-1"
  access_key = "__ACCESSKEY__"
  secret_key = "__SECRETKEY__"
}

resource "aws_instance" "ec2instance" {
  ami           = "__AMIID__"
  instance_type = "t2.micro"
  subnet_id = "subnet-06577657b4ae427f9"
  key_name = "firstawskey"
  tags = {
    Name ="SERVER"
    Environment = "DEV"
    OS = "Linux"
    Managed = "IAC"
  }
}