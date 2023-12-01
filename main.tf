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
    region = "ap-south-1"
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



