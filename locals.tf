# local data
locals {
    web_ami = "ami-0038a4e071b1d3138"
}

resource "aws_instance" "instance3" {
    instance_type = "t2.micro"
    ami = local.web_ami
    tags = {
        Name = "Web Server"
    }
}

resource "aws_instance" "instance4" {
    instance_type = "t2.micro"
    ami = local.web_ami
    tags = {
        Name = "Web Server"
    }
}