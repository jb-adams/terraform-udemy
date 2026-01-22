variable "my-list" {
    type = list(number)
    # default = [1, 2, 3]
}

output "my-list" {
  value = var.my-list
}

/*
resource "aws_instance" "web" {
    ami = "ami-123"
    instance_type = "t3.micro"
    vpc_security_group_ids = [
        "sg123",
        "sg456"
    ]
}
*/