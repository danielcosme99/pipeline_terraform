resource "aws_s3_bucket" "my_bucket" {
  bucket = "test-2-jeremy-terraform"
}

terraform {
  backend "s3" {
    bucket         = "pipeline-terraform-state-s3"
    key            = "tf-state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
