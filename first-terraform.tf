provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVWJGBYJDGP6CIMN2"
    secret_key = "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"
}

resource "aws_instance" "MyFirstEC2" {
    ami = "ami-02dc6e3e481e2bbc5"
    instance_type = "t2.micro"
    key_name = "TerraFormLive"
    tags = {
      Name = "TerraformAssignment"
    }
}