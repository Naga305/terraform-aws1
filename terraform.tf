provider "aws" {
   region  = "us-east-2"
   }
   resource "aws_instance" "server" {
   count = 1
   ami  = "ami-05803413c51f242b7"
   instance_type = "t2.micro"
   subnet_id = "subnet-887bc2e3"
   security_groups = ["sg-096fa3022f2685521"]
   key_name = aws_key_pair.key.id
   tags = {
     name = "terraform-server"   
   } 
}
resource "aws_key_pair" "key" {
    key_name = "My-Serverkey"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDnelel2vbkig9goQ2+Jha6rpOSxyB6keeGZ8kKnCvMN4i36JX8HSTaR8gajDQfwdX6gCi/JtseusP5kDW70khTJ2GqdKzBiSwFSbSfDn0/8FVxNubp7ObGO8vquPQNTybracAyQkrxwlt91NzFYN4GJbbrIU5fX807hy284Pl5o1SCfkrNYE4EfF4dp4MDQCe1nVnqTwUGhgwQCHciRyl+X6RnuULLcJ5ThM4lJ8ET+TRc7TANKPnzWkJhUCvEWnWj0jkRsf0m28iMSisArHMqUT6x0b7tbbtadKCH+mf6KDiiXCB2XcLDUaJrkhgrEfIEgENqf+QggpYcYRyj/yfsG7JQthcuEdNcNf/Q+MdPXM+N5cUIuVd7aaf1oEkz8/PmE14yx+J+E2KloA6QcxcrCBv60MfgWB24S/cTYsLf1Hotle/zmqjyFHlcR+NzrRqrjaTIRLDv77k4/a35LSYM/AwGedNEPuVeRdInlogur7buCrUgszps96b3QYBCB0k= naga abishek@LAPTOP-T9HUNH5H"
} 
