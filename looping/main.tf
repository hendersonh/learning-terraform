/*
With for expression, you can loop over a variable containing map item(s): key/value pairs

SYNTAX: [for <KEY>, <VALUE> in <MAP> : <OUTPUT>]
*/

//variable of type map
variable "hero_thousand_faces" {
  description = "map"
  type        = map(string)
  default = {
    neo      = "hero"
    trinity  = "love interest"
    morpheus = "mentor"
  }
}

//here is the ouput
output "bios" {
  value = [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}

//
//You can also use for expression to output a map rather than a list.
//using the following syntax
//SYNTAX: {for <KEY>, <VALUE> in <MAP> : <OUTPUT_KEY => <OUTPUT_VALUE>}

//transforming a map to make all the keys and values uppercase
output "upper_roles" {
  value = { for name, role in var.hero_thousand_faces : upper(name) => upper(role) }
}
