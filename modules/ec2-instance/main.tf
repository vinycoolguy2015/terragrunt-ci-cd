resource "aws_instance" "example" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
    mysql_ip=var.db_address
  }
}
