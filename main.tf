provider "aws" {
    region = "eu-west-2"
#    access_key = var.AWS_ACCESS_KEY_ID
#    secret_key = var.AWS_ACCESS_SECRET_ID
    access_key = var.aws_access_key_id
    secret_key = var.aws_access_secret_id
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}
