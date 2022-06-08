locals {
  bucketname = "${var.bucket_name}${random_id.ran_dom_suffix.hex}"
}    