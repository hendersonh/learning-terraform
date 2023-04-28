
resource "aws_security_group" "this" {
  name        = "private_subnet"
  description = "Protect Private nextwork"
}

output "security_group_id" {
  value = aws_security_group.this.id
}
