resource "aws_instance" "mysql" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
