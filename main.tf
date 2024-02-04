provider "aws" {
  region = "eu-west-2"  # Set your desired AWS region
}
resource "aws_instance" "example" {
  ami           = "ami-0903ff18cc3c8e341"  # Set your desired AMI ID
  instance_type = "t2.micro"  # Set your desired instance type
  key_name = "sundaytestbitnamiwest2" # Replace with your EC2 key pair
  tags = {
    Name = "sundayexample_EUwest2_LDN-instance0402"
  }
}
resource "aws_s3_bucket" "test2_0" {
  bucket = "sajbucket10" # Replace with a globally unique name
  tags = {
    Name = "test2_0"
 }
}