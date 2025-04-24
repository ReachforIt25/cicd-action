provider "aws" {
    region = "us-east-1"
  
}

# Create a new terraform Lightsail Instance
resource "aws_lightsail_instance" "terraform" {
  name              = "Dev-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  key_pair_name     = "keypair1"
  tags = {
    env  = "dev"
    Team = "Cloud"
  }
}

output "my-public-ip" {
  value = aws_lightsail_instance.terraform.public_ip_address
}
output "key_pair_name" {
  value = aws_lightsail_instance.terraform.key_pair_name
}
output "user-name" {
    value = aws_lightsail_instance.terraform.username
  
}