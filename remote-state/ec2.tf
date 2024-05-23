resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-03b3b97b9c1d67a1d"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}