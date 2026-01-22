resource "aws_instance" "myec2" {
    ami = "ami-123"
    instance_type = var.list[0] // reference a specific element in the list by index
    // instance_type = var.types["us-west-2"] // reference a specific element in the map by key
}

variable "list" {
    type = list
    default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        ap-south-1 = "t2.small"
    }
}