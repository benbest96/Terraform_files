#variables
variable "image" {
	type = string
	default = "ami-0038a4e071b1d3138 "
}
#string list
variable "availability_zones" {
	type = list(string)
	default = ["ca-central-1", us-west-2]
}


#objet type
variable "tags_list"{
	type = map
	default = {
	Name = "Web server"
	Environment = "Development"}
}

resource "aws_instance" "instance1" {
	instance_type = "t2.micro"
	ami = var.image_id
	tags = var.tags_list
	availability_zone = var.availability_zone[0]
}
resource "aws_instance" "instance2" {
	instance_type = "t3.micro"
	ami = var.image_id
	tags = var.tags_list
	availability_zone = var.availability_zone[1]
}