provider "aws" {
  region = "us-west-1" 
}

#create a Instance
resource "aws_instance" "terraform-instance" {

    ami           = "ami-03f2f5212f24db70a" 
    instance_type = var.instance_type
  
    tags = {
      Name = local.instance_name
    }
}

local {
        instance_name = "${terraform.workspace}-instance"

}

