terraform {
  backend "s3" {
    bucket = "varunsujith9966"      # your S3 bucket name
    key    = "terraform.tfstate"    # file name/path inside the bucket
    region = "us-east-1"            # must match your AWS region
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-08f44e8eca9095668"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
