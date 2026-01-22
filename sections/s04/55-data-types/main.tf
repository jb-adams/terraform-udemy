provider "aws" {
    region = "ca-central-1"
}

variable "username" {
    type = number
}

resource "aws_iam_user" "lb" {
    name = var.username
}