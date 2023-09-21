provider "aws" {
  region = "us-west-1" 
}

resource "aws_instance" "manual-ec2-import" {
  ami           = "ami-073e64e4c237c08ad" 
  instance_type = "t2.micro"
 
  tags = {
    Name = "manual-ec2-import"
  }
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = "manual-s3bucket-import"
  
 versioning {
    enabled = true  
  }
}