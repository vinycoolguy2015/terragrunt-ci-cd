remote_state {
  backend = "s3"
  config = {
    bucket = "athena1989"
    region = "us-east-1"
    key    = "${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
