variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "access_key" {
  type        = string
  default     = "AKIAVWJGBYJDGP6CIMN2"
}

variable "secret_key" {
  type        = string
  default     = "iRLJc1aPGKUOL/ULSdHq/wTb62txcjXbg2FZXKfB"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "ami_id" {
  type        = string
  default     = "ami-02dc6e3e481e2bbc5" # Amazon Linux 2 (us-east-1)
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  type        = string
  default     = "TerraFormLive"
}

variable "bucket_name" {
  type        = string
  default     = "my-s3-assignment"
}

variable "tags_name" {
    type = string
    default = "TerraformAssignment"
}