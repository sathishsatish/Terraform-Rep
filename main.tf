resource "aws_instance" "terraform-instance" {
  ami           = "ami-065681da47fb4e433" 
  instance_type = "t2.micro"
    tags = {
    Name = "Demo1"
  }
}