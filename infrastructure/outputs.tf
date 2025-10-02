# Network outputs
output "vpc_id" {
  value       = module.network.vpc_id
  description = "VPC ID"
}

output "public_subnet_id" {
  value       = module.network.public_subnet_id
  description = "Public Subnet ID"
}

output "jenkins_sg_id" {
  value       = module.network.jenkins_sg_id
  description = "Jenkins SG ID"
}

# Jenkins outputs
output "jenkins_public_ip" {
  value       = module.jenkins.jenkins_public_ip
  description = "Public IP of Jenkins EC2"
}

output "jenkins_instance_id" {
  value       = module.jenkins.jenkins_id
  description = "EC2 Instance ID for Jenkins"
}
