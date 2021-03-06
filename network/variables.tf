# Project Name
variable "project" {
  default = "MyfirstTFproject"
}
# environment (e.g. poc ,dev, sit, uat, preprod, prod)
variable "env" {
  default = "poc"
}
# AWS Region code
variable "region" {
default = "eu-west-2"
 type = string
}

# Name of Tier 1 with direct internet access (e.g. public, frontend)
variable "publicsubnet" {
  default = "frontend"
}
# Name of Tier 2 with internet access via Nat gatway (e.g. private)
variable "websubnet" {
  default = "backend"
}
# Name of Tier 3 with internet access via Nat gatway (e.g. private)
variable "datasubnet" {
  default = "storage"
}

# DNS support set to true
variable "dnsSupport" {
 default = true
}
# DNS HostNames set to true
variable "dnsHostNames" {
        default = true
}
# VPC CIDR range mentioned. Ensure the CIDR range is wide enough to include all IPs  forecasted.
variable "vpc_cidr" {
 default = "10.0.0.0/16"
 type = string
}
# Public subnet
variable "public-subnet-cidr" {
        default = "10.0.1.0/24"
        type = string
}
# Private subnet
variable "web-subnet-cidr" {
        default = "10.0.2.0/24"
        type = string
}
# Private subnet
variable "data-subnet-cidr" {
        default = "10.0.3.0/24"
        type = string
}

# to crete a route for internet access
variable "destination_cidr" {
        default = "0.0.0.0/0"
        type = string
}
# for NACL to open ephemeral ports
variable "ephemeral_cidr" {
        default = "0.0.0.0/0"
        type = string
}
#locals {
#  environment = "${terraform.workspace}"
#}
#locals {
#  common_tags = {
#    Terraform   = "true"
#    Environment = local.environment
#  }
#}
# end of variables.tf


# No. of Availability Zones to be used for HA.
#variable "az_count" {
#    default = 3
#    type = number
#}
# Default Instance Tenancy of EC2 instances
#variable "instanceTenancy" {
# default = ["default"]
# type = list(string)
#}
