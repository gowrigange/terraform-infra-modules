output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "sg_id" {
  value = aws_security_group.web.id
}

