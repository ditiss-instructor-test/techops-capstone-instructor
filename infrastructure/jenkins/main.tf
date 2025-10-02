# Create SSH key pair in AWS from local public key
resource "aws_key_pair" "jenkins_key" {
  key_name   = "techops-jenkins-key"
  public_key = file("${path.module}/../jenkins_id_rsa.pub")
}

# Jenkins EC2 instance
resource "aws_instance" "jenkins" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.jenkins_sg_id]
  iam_instance_profile        = var.instance_profile
  associate_public_ip_address = true
  key_name                    = aws_key_pair.jenkins_key.key_name

  tags = {
    Name = "jenkins-server"
    Role = "jenkins"
  }
}
