variable "ami_id" {
    type =  string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"

}


variable "ec2_tags" {
    type = map
    default = {
        Name = "terraform-demo"
        Terraform = true
        Project = "Joindevops"
        Environment = "Dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all-1"
    description = "Security group name attached to EC2"
}


variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}


variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}