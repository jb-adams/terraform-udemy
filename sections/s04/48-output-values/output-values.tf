provider "aws" {
    region = "ca-central-1"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}

output "public_ip" {
    value = aws_eip.lb.public_ip
}