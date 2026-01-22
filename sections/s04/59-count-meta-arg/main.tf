provider "aws" {
    region = "ca-central-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-098c603f5d195a633"
    instance_type = "t2.micro"
    count = 3

    tags = {
        Name = "payments-system"
    }
}

resource "aws_iam_user" "this" {
    name = "payments-user"
    count = 3
}