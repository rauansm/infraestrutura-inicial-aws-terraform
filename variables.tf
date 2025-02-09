variable "region" {
  type = string
}

variable "cidr_block_vpc" {
  type        = string
  default     = "10.0.0.0/16"
  description = "65.536 endereços disponíveis"
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "cidr_block_public_subnet_1" {
  type        = string
  default     = "10.0.1.0/24"
  description = "256 endereços disponíveis"
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "availability_zone_public_subnet_1" {
  type = string
}

variable "cidr_block_public_subnet_2" {
  type        = string
  default     = "10.0.2.0/24"
  description = "256 endereços disponíveis"
}

variable "availability_zone_public_subnet_2" {
  type = string
}

variable "cidr_block_private_subnet_1" {
  type        = string
  default     = "10.0.10.0/24"
  description = "256 endereços disponíveis"
}

variable "availability_zone_private_subnet_1" {
  type = string
}

variable "cidr_block_private_subnet_2" {
  type        = string
  default     = "10.0.11.0/24"
  description = "256 endereços disponíveis"
}

variable "availability_zone_private_subnet_2" {
  type = string
}
