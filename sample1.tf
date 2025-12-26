provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0c398cb65a93047f2"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0cf1dd7789ca04235"]
    key_name = "task-key"
    tags = {
      name ="myinstance"
    }
  
}