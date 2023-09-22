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



## import cammand for ce2:
# terraform import aws_instance.manual-ec2-import i-057993601a835e5f5

## import cammand for s3:
# terraform import aws_s3_bucket.my_bucket manual-s3bucket-import

# git pull >> terraform init >> ec2/s3 cammand