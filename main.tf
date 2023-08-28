#create a Instance
resource "aws_instance" "terraform-instance" {

   count = 3  
  ami           = "ami-03f2f5212f24db70a" 
  instance_type = "t3.micro"
   
  tags = {
    Name = "Demo2-${count.index}"
  }
}

#Create S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "first-bucket-name-2708"
  acl    = "private"  # Set the bucket's access control list (ACL)

  tags = {
    Name = "Terraform Bucket"
    Environment = "Development"
  }
}

#Create a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
}

#Security Group

resource "aws_security_group" "example_security_group" {
  name        = "first-security-group"
  description = "First security group"

 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from any source
  }
}
