resource "aws_iam_policy" "example_policy" {
  name        = var.policy_name
  description = "An example IAM policy for EC2 instances"
  
   policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = var.action,
        Effect = var.effect,
        Resource = var.resources,
      }
      # Add more policy statements as needed
    ]
  })
}
