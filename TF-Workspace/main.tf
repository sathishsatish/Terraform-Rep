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


terraform {
	backend "s3" {
	bucket = "my-unique-tf-workspace-backup"
	key    = "workspacebackup/terraform.tfstate"
	region = "us-west-1"
}
}


#  terraform workspace new prodd
#  terraform workspace new testt
#  terraform workspace list / show
#  terraform workspace select prodd / testt
#  terraform plan -var-file="prodd.tf" / "testt.tf"
#  terraform apply -var-file="prodd.tf" / "testt.tf"

# git pull >> terraform init >> terraform plan cammand >> terraform apply cammand


#  aws s3api create-bucket --bucket my-unique-tf-workspace-backup --region us-west-1 --create-bucket-configuration LocationConstraint=us-west-1
# git pull >> terraform init >> 
