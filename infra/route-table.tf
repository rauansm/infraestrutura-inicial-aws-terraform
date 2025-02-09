resource "aws_route_table" "example_public_rt" {
  vpc_id = aws_vpc.example_vpc.id

  route {
    cidr_block = "0.0.0.0/0" # Define que todo o tráfego de saída será direcionado para a internet
    gateway_id = aws_internet_gateway.example_igw.id
  }

  tags = {
    Name = "example_public-route-table"
  }
}

resource "aws_route_table_association" "public_subnet_assoc_1" {
  subnet_id      = aws_subnet.example_public_subnet_1.id
  route_table_id = aws_route_table.example_public_rt.id # Associa a subnet pública à tabela de rotas públicas
}

resource "aws_route_table_association" "public_subnet_assoc_2" {
  subnet_id      = aws_subnet.example_public_subnet_2.id
  route_table_id = aws_route_table.example_public_rt.id
}

resource "aws_nat_gateway" "example_nat_gw_1" {
  allocation_id = aws_eip.nat_1.id                      # Associa um IP elástico ao NAT Gateway para saída segura
  subnet_id     = aws_subnet.example_public_subnet_1.id # NAT Gateway precisa estar em uma subnet pública

  tags = {
    Name = "example-nat-gw-1"
  }
}

resource "aws_nat_gateway" "example_nat_gw_2" {
  allocation_id = aws_eip.nat_2.id
  subnet_id     = aws_subnet.example_public_subnet_2

  tags = {
    Name = "example-nat-gw-2"
  }
}

resource "aws_eip" "nat_1" {
  domain = "vpc" # Cria um Elastic IP para ser associado ao NAT Gateway
}

resource "aws_eip" "nat_2" {
  domain = "vpc"
}

resource "aws_route_table" "example_private_rt_1" {
  vpc_id = aws_vpc.example_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.example_nat_gw_1.id # Faz com que subnets privadas usem o NAT Gateway para saída segura
  }

  tags = {
    Name = "example_private-route-table-1"
  }
}

resource "aws_route_table" "example_private_rt_2" {
  vpc_id = aws_vpc.example_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.example_nat_gw_2.id
  }

  tags = {
    Name = "example_private-route-table-2"
  }
}

resource "aws_route_table_association" "private_subnet_assoc_1" {
  subnet_id      = aws_subnet.example_private_subnet_1.id
  route_table_id = aws_route_table.example_private_rt_1.id # Associa subnet privada ao NAT Gateway
}

resource "aws_route_table_association" "private_subnet_assoc_2" {
  subnet_id      = aws_subnet.example_private_subnet_2.id
  route_table_id = aws_route_table.example_private_rt_2.id
}
