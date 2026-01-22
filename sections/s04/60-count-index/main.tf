provider "aws" {
    region = "ca-central-1"
}

variable "dev_names" {
    type = list
    default = ["alice", "bob", "johnconnor"]
}

resource "aws_instance" "myec2" {
    ami = "ami-098c603f5d195a633"
    instance_type = "t2.micro"
    count = 3

    tags = {
        Name = "payments-system-${count.index}"
    }
}

resource "aws_iam_user" "this" {
    count = 3
    name = "dev-${var.dev_names[count.index]}"   
}