terraform {
  backend "s3" {
    key     = "s3/s3-web-jenkins.tfsate"
    bucket  = "backend-lfg"
    region  = "us-west-2"
  }
}