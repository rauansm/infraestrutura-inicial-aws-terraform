resource "aws_internet_gateway" "example_igw" {
  vpc_id = aws_vpc.example_vpc.id # Associa o Internet Gateway à VPC para permitir saída para a internet

  tags = {
    Name = "example-igw"
  }
}
