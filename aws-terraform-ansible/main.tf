terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "test-ec2" {
  
    ami = "ami-0d2614eafc1b0e4d2"


    security_groups = [ aws_security_group.allow_http.name ]

    instance_type = "t2.micro"

    key_name = "aws_key"

}

output "o1" {
  value = aws_instance.test-ec2.public_ip
}