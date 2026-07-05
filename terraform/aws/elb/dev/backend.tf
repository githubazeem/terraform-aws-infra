terraform {
  backend "s3" {
    bucket         = "terraform-state-215726090298"
    key            = "elb/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
