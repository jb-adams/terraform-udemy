provider "aws" {
    region = "ca-central-1"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}

resource "aws_instance" "web" {
    ami = "ami-098c603f5d195a633"
    instance_type = "t2.micro"

    tags = {
        Name = "web"
    }
}