/* for_each allows looping over lists, sets and maps to
   create multiple copies of each.

   The syntax:
   resource "<PROVIDER>_<TYPE>" "<NAME" {
    for_each = <COLLECTION>
      [CONFIG...]  each.value and each.key is available in CONFIG
    }
*/

//Create three IAM users with "for_each":looping over a resource
resource "aws_iam_user" "self" {
  for_each = toset(["hendy", "mark"]) //convert string array to set
  name     = each.value  //each.value and each.key contains key and values
}

output "all_users" { //will produce a map of resources
  value = aws_iam_user.self
}

output "first_user" { //will produce a single map resource: user at 0
  value = values(aws_iam_user.self)[0]
}

output "first_user_name" { //first user name only
  value = values(aws_iam_user.self)[0].name
}

output "all_users_names" { //first user name only
  value = values(aws_iam_user.self)[*].name //an array of names
}

