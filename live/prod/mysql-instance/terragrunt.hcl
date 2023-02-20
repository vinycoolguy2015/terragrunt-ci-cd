terraform {
  source = "../../../modules/mysql-instance"
}
inputs = {
  instance_type = "t2.micro"
  instance_name = "mysql-server-prod"
}
include "root" {
  path = find_in_parent_folders()
}
