terraform {
  source = "../../../modules/ec2-instance"
}
inputs = {
  instance_type = "t2.micro"
  instance_name = "example-server-stage"
  db_address = dependency.mysql.outputs.instance_ip_addr
}
dependency "mysql" {
  config_path = "../mysql-instance"
  mock_outputs = {
    instance_ip_addr = "mock_name"
  }
  mock_outputs_allowed_terraform_commands = ["init","plan"]
}
include "root" {
  path = find_in_parent_folders()
}
