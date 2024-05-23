module "ec2-test" {
  source = "../../terraform-module-aws"
  tags = {
    Name = "db"
  }
  instance_type = "t2.small"
}