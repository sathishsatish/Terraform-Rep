resource "aws_instance" "terraform-instance" {

   count = 3  
  ami           = "ami-065681da47fb4e433" 
  instance_type = "t3.micro"
    tags = {
    Name = "Demo1"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "first-bucket-name-2708"
  acl    = "private"  # Set the bucket's access control list (ACL)

  tags = {
    Name = "Terraform Bucket"
    Environment = "Development"
  }
}