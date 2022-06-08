
resource "random_id" "ran_dom_suffix" {
  byte_length = 8
}

#tfsec:ignore:aws-s3-block-public-acls
#tfsec:ignore:aws-s3-block-public-policy
#tfsec:ignore:aws-s3-enable-bucket-encryption
#tfsec:ignore:aws-s3-ignore-public-acls
#tfsec:ignore:aws-s3-no-public-buckets
#tfsec:ignore:aws-s3-encryption-customer-key
#tfsec:ignore:aws-s3-enable-bucket-logging
#tfsec:ignore:aws-s3-enable-versioning
#tfsec:ignore:aws-s3-specify-public-access-block
resource "aws_s3_bucket" "bucket" {
  bucket = local.bucketname
  tags = {
    "Produto" = var.produto
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_object" "bucket_index" {
  bucket       = aws_s3_bucket.bucket.id
  key          = "index.html"
  content      = "<h1>Site Banco PAN</h1>"
  content_type = "text/html"
  acl          = "public-read"
}

resource "aws_s3_object" "bucket_error" {
  bucket       = aws_s3_bucket.bucket.id
  key          = "error.html"
  content      = "<h1>OOOPS!</h1> <p>There was an error!</p>"
  content_type = "text/html"
  acl          = "public-read"
}
