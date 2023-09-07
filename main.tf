/*
#create a Instance
resource "aws_instance" "terraform-instance" {

   count = 3  
  ami           = "ami-03f2f5212f24db70a" 
  instance_type = "t3.micro"
  security_groups =[aws_security_group.example_security_group.name]

  tags = {
    Name = "Demo2-${count.index}"
  }
}

#Create S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "first-bucket-name-2708"
  acl    = "private" 

versioning {
    enabled = true  
  }

  tags = {
    Name = "Terraform Bucket"
    Environment = "Development"
  }
}


#Create a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "example_igw" {
  vpc_id = aws_vpc.example_vpc.id
}


##Security Group

resource "aws_security_group" "example_security_group" {
  name        = "first-security-group"
  description = "First security group"

 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from any source
  }

  // Egress rule (outbound traffic)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

*/

# Create a IAM user Module

module "iam_user"{
   source = "./TF-Module-IAM User"
}

module "ec2_instance"{
    source = "./TF-Module-EC2"
    ami_id = "ami-03f2f5212f24db70a"
    instance_type = "t2.micro"
    subnet_id = "subnet-02192f07acc7b848d"
    instance_name = "EC2_Instance_070923"
}

module "instance_policy"{
    source = "./TF-Module-IAM Policy"
    policy_name = "IAM_Policy_070923"
    policy_discripttion = "IAM_Policy_Discription"
    action = ["ec2:Describe*"]
    resources = ["*"]
    
}



