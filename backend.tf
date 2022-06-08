terraform {
  backend "s3" {
    key     = "s3/s3-web.tfsate"
    bucket  = "backend-lfg"
    region  = "us-west-2"
    profile = "pocaccess"
  }
}