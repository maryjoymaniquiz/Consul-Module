#Virtual Private Cloud - gives full control over virtual networking environment, including resource placement, connectivity, and security. 
resource "aws_vpc" "maniquiz_consul_vpc" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "maniquiz_consul_vpc"
  }
} 
resource "aws_subnet" "maniquiz_consul_subnet" {
  vpc_id                  = aws_vpc.maniquiz_consul_vpc.id         // virtual network
  cidr_block              = "10.0.0.0/24"                         // a way of representing an IP address and its network mask
  map_public_ip_on_launch = "true"                               // to indicate that instances launched into the subnet should be assigned a public IP address

  tags   = {
    Name = "maniquiz_consul_subnet"
  }
}


