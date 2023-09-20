/*
resource "aws_instance" "terraform-instance" {

    ami           = "ami-073e64e4c237c08ad" 
    instance_type = var.instance_type
  
    tags = {
      Name = local.instance_name
    }
}

locals {
     instance_name = "${terraform.workspace}-instance"
}
*/

terraform {
	backend "s3" {
	bucket = "my-unique-tf-workspace-backup"
	key    = "workspacebackup/terraform.tfstate"
	region = "us-west-1"
}
}