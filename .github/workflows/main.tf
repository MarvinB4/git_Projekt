terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket = "buckettestzweck"
    key    = "app/terraform.tfstate" # Key könnt ihr selbst bestimmen, sollte nur über die deployments einheitlich sein
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami                    = "ami-02dfbd4ff395f2a1b" # ubuntu
  instance_type          = "t2.micro"
  key_name               = "key-0601893f74e9aa454"
  vpc_security_group_ids = [aws_security_group.ssh.id]
  tags = {
    Name = "test-server-iac"
  }
}


output "instance_id" {
  value = aws_instance.demo.id
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}