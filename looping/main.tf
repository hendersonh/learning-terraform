#Looping a resource with a counter
//3 users resources will be recorded
resource "aws_iam_user" "self" {
  count = length(var.users) 
  name =  var.users[count.index] 
}

variable "users" {
  type = list(string)
  default = ["hendy", "elvis",  "Andy"]  
}

//notice that using a counter turns the resource into an array of resources
output "list_all_user_resources" {
  value = aws_iam_user.self
}

//Listing the user name of all users
output "list_all_user_names" {
  value = aws_iam_user.self[*].name
}

