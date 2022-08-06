terraform {
  backend "s3" {
    bucket         = "new-tf-bucket17"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb_statelock"
  }
}
