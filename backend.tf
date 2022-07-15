terraform {
  backend "s3" {
    bucket = "mybucket-tf"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb_statelock"
  }
}