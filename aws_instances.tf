resource "aws_instance" "pub-ins-ter" {
  ami                    = "ami-04a81a99f5ec58529"
  instance_type          = "t2.micro"
  key_name               = "newkey"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.security_group.id]
  tags = {
    Name = "pubterraform"
  }
}

resource "aws_instance" "pvt-ins-ter" {
  ami                    = "ami-04a81a99f5ec58529"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet.id
  key_name               = "newkey"
  vpc_security_group_ids = [aws_security_group.security_group.id]
  tags = {
    Name = "pvtterraform"
  }

}