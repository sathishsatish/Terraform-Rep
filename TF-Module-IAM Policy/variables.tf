variable "policy_name"{
    description = "IAM policy Name"
    type = string
  #  default = "IAM_Policy_150923"
}

variable "policy_discripttion"{
    description = "IAM policy Discription"
    type = string
 #   default = "IAM_Policy_Discription"
}

variable "action"{
    description = "List of Allowed Action"
    type = list(string)
  #  default = "ec2:Describe*"
}

variable "effect"{
    description = "Effect of the policy allow or deny"
    type = string
    default = "Allow"
}

variable "resources"{
    description = "List of allowed resouce"
    type = list(string)
 #   default = "*"
}