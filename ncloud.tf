terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

provider "ncloud" {
    site = "gov"
    support_vpc = true
    access_key = "accesskey"
    secret_key = "secretkey"
    region="KR"
}