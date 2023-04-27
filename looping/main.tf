//Creating multiple modules using 'count'
module "users" {
  source = "./iam-user"
  count = length(var.user_names)
  user_name = var.user_names[count.index]
}

variable "user_names" {
  description = "Create IAM users with these names" 
  type = list(string)
  default = ["neo", "trinity", "morpheus"]
}

//Using 'count' to create multiple modules produces an array of modules
output "show_first_user_name" { //user name at index 0
 value = module.users[0].user_name
}

output "show_all_users_name" {
 value = module.users[*].user_name
}