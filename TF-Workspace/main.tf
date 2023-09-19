provider "aws" {
  region = "us-west-1" 
}

#create a Instance
resource "aws_instance" "terraform-instance" {

    ami           = "ami-03f2f5212f24db70a" 
    instance_type = "t2.micro"
  
    tags = {
      Name = local.instance_name
    }
}

locals {
     instance_name = "${terraform.workspace}-instance"
}

