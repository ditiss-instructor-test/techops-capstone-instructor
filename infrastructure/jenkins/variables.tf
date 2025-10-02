variable "ami_id" {
  description = "AMI ID for Jenkins server"
  type        = string
  default     = "ami-08e5424edfe926b43" # Ubuntu 22.04 LTS in ap-south-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Public subnet ID for Jenkins"
  type        = string
}

variable "jenkins_sg_id" {
  description = "Security Group ID for Jenkins"
  type        = string
}

variable "instance_profile" {
  description = "IAM instance profile for Jenkins EC2"
  type        = string
}
