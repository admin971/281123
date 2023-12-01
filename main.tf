terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region     = "ap-south-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

resource "aws_instance" "terraform" {
  ami           = "ami-0287a05f0ef0e9d9a"
  instance_type = "t2.micro"
  #count =5
   #key_name ="singapore"
  tags = {
    Name = "HelloWorld"
  }
}
