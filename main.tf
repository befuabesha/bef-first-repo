######################################################
#
#
# sample TF config for test
# 
# written by Befkadu (Bef) - May 2022
#
#
######################################################

resource "aws_security_group" "bef_sg" {
  name        = "test_sg_1"
  description = "created for jenkins intefration test"
  vpc_id      = "vpc-06f84a90d12b77dd5" 

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["172.2.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test"
  }
}
