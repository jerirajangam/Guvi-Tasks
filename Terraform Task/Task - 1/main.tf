provider "aws" {
  region = "us-east-1"
  alias  = "region1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "region2"
}

resource "aws_instance" "guvi-instance_region1" {
  provider      = aws.region1
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  tags = {
    Name = "Guvi EC2 Instance-Region1"
  }
}

resource "aws_instance" "guvi-instance_region2" {
  provider      = aws.region2
  ami           = "ami-038bba9a164eb3dc1"
  instance_type = "t2.micro"
  tags = {
    Name = "Guvi EC2 Instance-Region2"
  }
}
