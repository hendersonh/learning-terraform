/*
Given a list of names, converts the names to uppercase.
Solution: use Terraform's for expression.
SYNTAX: [for <ITEM> in <LIST> : <OUTPUT>]
  LIST: the list to loop over
  ITEM: the local variable name assign to each item item in LIST
  OUTPUT: is an expression that transforms ITEM in some way 
*/

//here is the list of names
variable "names" {
  description = "A list of names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

//user for expression to change all items to upper case
output "upper_names" {
  value = [for name in var.names : upper(name)]
}

//You can also filter the resulting list by secifying a condition:
output "short_upper_names" {
  value = [for name in var.names : upper(name) if length(name) < 5]
}
