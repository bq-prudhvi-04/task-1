provider "aws" {
  region  = "us-east-1"
  access_key  =  ${{ secrets.AWS_ACCESS_KEY_ID }}
  secret_key  =  ${{ secrets.AWS_SECRET_ACCESS_KEY }}
}

resource "aws_instance" "web_server" {
    ami = "ami-0279c3b3186e54acd"
    instance_type = "t2.micro"
#    subnet_id = var.public_subnet[1]
 #   key_name = "demo"
 #   security_groups = [var.security_groups]

   
    
    tags = {
        Name = "web_server"
    }
}
