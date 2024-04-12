terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = ">= 1.62.0"
    }
  }
}

# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  region     = "cn-east-3"
  access_key = "CORXJ8HEMNIDRCAJ4YAW"
  secret_key = "7zyfJNRthz323xRKjmUQCa7M5a9dDb0T1yiAkVye"
}

# Create a VPC
resource "huaweicloud_vpc" "example" {
  name = "vpc"
  cidr = "192.168.0.0/16"
}