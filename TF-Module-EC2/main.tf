# Module for EC2
resource "aws_instance" "terraform-instance" {

     ami           = var.ami_id
     instance_type = var.instance_type
      subnet_id       = var.subnet_id
      
  #ami           = "ami-03f2f5212f24db70a" 
  #instance_type = "t3.micro"
  # security_groups =[aws_security_group.example_security_group.name]

  tags = {
    Name = var.instance_name
  }
}