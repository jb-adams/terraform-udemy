provider "aws" {
    region = "ca-central-1"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}
