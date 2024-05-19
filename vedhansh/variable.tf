


variable "amazon_image_id" {
    default = "ami-090252cbe067a9e58"
    type = string
   description = "RedRHEL-9 AMI ID"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}


variable "instance_name" {
    type = list
    default = ["db", "backend", "frontend"]

}

variable "instance_names" {
    default = "db"

  
}


variable "sg_name" {
  default = "allow_ssh_practice"

}

variable "sg_description" {
  default = "allow_everything"
}

variable "protocol" {
  default = "tcp"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type =  list(string)
  
}

variable "ssh_port" {
    default = "22"
  
}
