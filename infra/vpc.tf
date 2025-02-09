resource "aws_vpc" "example_vpc" {
  cidr_block           = var.cidr_block_vpc       # Define a faixa de endereços IP para a VPC
  enable_dns_support   = var.enable_dns_support   # Habilita a resolução de DNS dentro da VPC
  enable_dns_hostnames = var.enable_dns_hostnames # Permite que instâncias dentro da VPC tenham nomes DNS atribuídos automaticamente

  tags = {
    Name = "example-vpc"
  }
}
