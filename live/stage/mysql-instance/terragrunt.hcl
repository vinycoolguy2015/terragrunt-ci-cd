terraform {
  source = "../../../modules/mysql-instance"
}
inputs = {
  instance_type = "t2.micro"
  instance_name = "mysql-server-stage"
}
