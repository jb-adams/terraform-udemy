provider "aws" {
    region = "ca-central-1"
}

data "aws_ami" "myimage" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["ubuntu-minimal/images-testing/hvm-ssd/ubuntu-jammy-daily-amd64-minimal-*"]
    }
}

resource "aws_instance" "web" {
    ami = data.aws_ami.myimage.image_id
    instance_type = "t2.micro"
}
