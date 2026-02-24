terraform {
  backend "s3" {
    bucket         = "terraform-state-mohit-gowda"
    key            = "devops-project/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}