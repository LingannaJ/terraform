


resource "aws_security_group" "allow_practice" {
  name        = var.sg_name
  description = "allow everthing in security"
  




  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks

  }

   egress {
    from_port        = 0 # from 0 to 0 means, opening all protocols
    to_port          = 0
    protocol         = "-1" # -1 all protocols
    cidr_blocks      = var.cidr_blocks

  }


  tags = {
    Name = var.sg_name
    createdBy = "Vedhansh"
  }
}


resource "aws_instance" "Expense" {
  count = length(var.instance_name)
  ami           = var.amazon_image_id
  instance_type = var.instance_name [count.index] == "db" ? "t3.small" : "t2.micro" 

tags = {
  Name = var.instance_name[count.index]

}

}

