resource "aws_security_group" "allow_http" {
  name = "allow_http"
  
  ingress {
   from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"] 
  }

  ingress {
   from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"] 
  }

  egress  {
        protocol = "-1"
        
        from_port = 0
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]   
        ipv6_cidr_blocks = ["::/0"]

  }
}