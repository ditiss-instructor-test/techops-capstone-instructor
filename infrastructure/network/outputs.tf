output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public_a.id
}

output "private_subnet_id" {
  value = aws_subnet.private_a.id
}

output "jenkins_sg_id" {
  value = aws_security_group.jenkins_sg.id
}

output "app_sg_id" {
  value = aws_security_group.app_sg.id
}
