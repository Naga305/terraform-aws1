provider "aws" {
  region = var.aws_region
}

# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  count=1
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= "sg-00018a48c726a0834"
  tags= {
    Name = var.tag_name
  }
}


