variable "environment" {
    default = "production"
}

variable "region" {
    default = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-098c603f5d195a633"
    instance_type = var.environment == "production" && var.region == "us-east-1" ? "m5.large" : "t2.micro"
}