output "jenkins_public_ip" {
  value       = aws_instance.jenkins.public_ip
  description = "Public IP of Jenkins server"
}

output "jenkins_id" {
  value       = aws_instance.jenkins.id
  description = "Instance ID of Jenkins server"
}
