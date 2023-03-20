
# Route Table - Create a custom route table for public subnet.              Public subnet can reach to the internet by using this.
resource "aws_route_table" "maniquiz_consul_rt" {
  vpc_id = aws_vpc.maniquiz_consul_vpc.id

  route {
    cidr_block = "10.0.0.0/24"
    
  }
  tags = {
    Name = "maniquiz_consul_rt"
  }
}

#Route Table Association - Associate Custom Route Table and Subnet
resource "aws_route_table_association" "maniquiz_assoc" {
  subnet_id      = aws_subnet.maniquiz_consul_subnet.id
  route_table_id = aws_route_table.maniquiz_consul_rt.id
}

