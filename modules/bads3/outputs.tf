output "webaddress" {
  value = format("http://%s", aws_s3_bucket_website_configuration.example.website_endpoint)
}
