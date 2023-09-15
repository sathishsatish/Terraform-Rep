variable "ami_id"{
    description = "AMI ID for EC2"
    type = string
  #  default = "ami-03f2f5212f24db70a"
}


variable "instance_type"{
    description = "Instance type for EC2"
    type = string
  #  default = "t2.micro"
}


variable "subnet_id"{
    description = "subnet id for EC2 "
    type = string
  #  default = " "
}

variable "instance_name"{
    description = "Name for EC2 instance"
    type = string
   # default = "EC2_Instance_150923"
}