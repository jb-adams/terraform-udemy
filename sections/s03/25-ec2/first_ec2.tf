terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.28.0"
        }
    }  
}

provider "aws" {
    region = "ca-central-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "myec2" {
    ami = "ami-098c603f5d195a633"
    instance_type = "t2.micro"

    tags = {
        Name = "my-first-ec2"
    }
}
