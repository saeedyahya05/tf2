iterraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXLF56FPJL7H3C2H5"
  secret_key = "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"
}

resource "aws_instance" "web001" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"

  tags = {
    Name = "Deployment"
  }
}
