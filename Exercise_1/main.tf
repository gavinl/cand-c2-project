# Designate a cloud provider, region, and credentials

# credentials were saved to ~/.aws/credentials following these instructions
# https://www.terraform.io/docs/providers/aws/index.html#shared-credentials-file
# https://blog.gruntwork.io/authenticating-to-aws-with-the-credentials-file-d16c0fbcbf9e

provider "aws" {
  region  = "ap-southeast-2"
  version = "~> 2.70"
  #access_key = "<Your Access Key>"
  #secret_key = "<Your Secret Key>"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count         = 4
  ami           = "ami-020d764f9372da231"
  instance_type = "t2.micro"
  tags = {
    project  = "2"
    exercise = "1"
  }
}

# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count         = 2
  ami           = "ami-020d764f9372da231"
  instance_type = "m4.large"
  tags = {
    project  = "2"
    exercise = "1"
  }
}
