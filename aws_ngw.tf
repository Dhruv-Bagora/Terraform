resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.nateip.id
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = "test-nat-gateway"
  }
}