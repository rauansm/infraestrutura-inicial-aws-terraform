resource "aws_subnet" "example_public_subnet_1" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.cidr_block_public_subnet_1        # Define um bloco de endereços IP para a subnet pública
  map_public_ip_on_launch = var.map_public_ip_on_launch           # Habilita atribuição automática de IP público para instâncias nesta subnet
  availability_zone       = var.availability_zone_public_subnet_1 # Define a zona de disponibilidade onde a subnet será criada

  tags = {
    Name = "example_public_subnet_1"
  }
}

resource "aws_subnet" "example_public_subnet_2" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.availability_zone_public_subnet_2
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone_public_subnet_2

  tags = {
    Name = "example_public-subnet-2"
  }
}

resource "aws_subnet" "example_private_subnet_1" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = var.cidr_block_private_subnet_1
  availability_zone = var.availability_zone_private_subnet_1

  tags = {
    Name = "example_private_subnet_1"
  }
}

resource "aws_subnet" "example_private_subnet_2" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = var.cidr_block_private_subnet_2
  availability_zone = var.availability_zone_private_subnet_2

  tags = {
    Name = "example_private-subnet-2"
  }
}
