terraform {
  backend "s3" {
    bucket = "varunsujith9966"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2-AutoDeploy"   # changed tag value
  }
}
