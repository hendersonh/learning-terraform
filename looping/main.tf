/* Use for_each to create multiple in line blocks within a resource. 
The module <create_security_group> allows caller to add security_rules to its security_group.
*/

module "my_security_group" {
  source = "./create_security_group"
}

resource "aws_vpc_security_group_egress_rule" "self" {
  description = "protects the private network"
  security_group_id = module.my_security_group.security_group_id 
  cidr_ipv4   = "10.0.0.0/8"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 8080
}