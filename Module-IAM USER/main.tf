resource "aws_iam_user" "iam-user"{
    name = var.user_name
  #  policy_arn = module.TF-Module-IAM Policy.example_policy
}

