provider "aws" {
    region = "ca-central-1"
}

data "aws_instances" "example" {
    filter {
        name = "tag:Team"
        values = ["Production"]
    }
}