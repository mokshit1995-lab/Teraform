resource "aws_instance" "terraform" {
    ami = data.aws_ami.joindevops.id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.Allow_All.id]
    tags = {
        Name = "terraform"
        Terraform = "true"
    }

}


resource "aws_security_group" "Allow_All" {
  name   = "TF_allow_all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all prots
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all prots
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow-all-TF"

  }
}
