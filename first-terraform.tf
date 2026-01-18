provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "MyFirstEC2" {
    count = 2
    ami = "ami-02dc6e3e481e2bbc5"
    instance_type = "t2.micro"
    key_name = "TerraFormLive"
    tags = {
      Name = "TerraformAssignment"
    }
}

resource "aws_s3_bucket" "my_s3_bucket" {
   bucket = "my-s3-test-bucket02"
   force_destroy = true
   tags = {
     Name = "TerraformAssignment"
   }
}