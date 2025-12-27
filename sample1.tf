provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0ecb62995f68bb549"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0cf1dd7789ca04235"]
    key_name = "task-key"
    availability_zone = "us-east-1a"
    tags = {
      name ="myinstance"
    }
  
}