//module to create a user in IAM
resource "aws_iam_user" "self" {
  name = var.user_name
}

//------------input variables-------------
variable "user_name" {
  description = "The user name to use"
  type = string
}

//
output "user_name" {
  value = aws_iam_user.self.name
}