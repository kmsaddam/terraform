terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

# -------------------------
# S3 Bucket
# -------------------------

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.bucket_name}-bucket"
  force_destroy = true

  tags = {
    Name        = "${var.tags_name}-bucket"
  }
}

# -------------------------
# EC2 Instance
# -------------------------
resource "aws_instance" "app_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  tags = {
    Name        = "${var.tags_name}"
  }
}