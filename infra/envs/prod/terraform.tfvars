
####### PROVIDER #######
region = "us-east-1"

####### VPC #######
cidr_block_vpc       = "10.0.0.0/16"
enable_dns_support   = true
enable_dns_hostnames = true

####### SUBNETS #######
cidr_block_public_subnet_1        = "10.0.1.0/24"
map_public_ip_on_launch           = true
availability_zone_public_subnet_1 = "us-east-1a"

cidr_block_public_subnet_2        = "10.0.2.0/24"
availability_zone_public_subnet_2 = "us-east-1b"

cidr_block_private_subnet_1        = "10.0.10.0/24"
availability_zone_private_subnet_1 = "us-east-1a"

cidr_block_private_subnet_2        = "10.0.11.0/24"
availability_zone_private_subnet_2 = "us-east-1b"
