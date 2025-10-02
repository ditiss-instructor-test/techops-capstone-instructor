terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./network"

  aws_region = var.aws_region
}

module "jenkins" {
  source           = "./jenkins"
  subnet_id        = module.network.public_subnet_id
  jenkins_sg_id    = module.network.jenkins_sg_id
  instance_profile = "TechOps_JenkinsInstanceProfile"
}
