resource "ncloud_vpc" "vpc" {
    name = "simplatform-vpc"
    ipv4_cidr_block = "10.0.0.0/16"
}

resource "ncloud_subnet" "pub-bastion-sbn" {
  name           = "pub-bastion-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.100.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.bastion-nacl.id
  subnet_type    = "PUBLIC" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN"
}
resource "ncloud_subnet" "pri-ngs-sbn" {
  name           = "pri-ngs-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.1.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.ngs-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN"
}
resource "ncloud_subnet" "pri-mysql-sbn" {
  name           = "pri-mysql-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.2.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.mysql-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN"
}
resource "ncloud_subnet" "pri-redis-sbn" {
  name           = "pri-redis-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.3.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.redis-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN"
}
resource "ncloud_subnet" "pri-mongodb-sbn" {
  name           = "pri-mongodb-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.4.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.mongodb-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN"
}
resource "ncloud_subnet" "pri-psql-sbn" {
  name           = "pri-psql-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.5.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.psql-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN" // GEN(General) | LOADB (For load balancer)
}
resource "ncloud_subnet" "pri-nks-mlops-sbn" {
  name           = "pri-nks-mlops-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.6.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.mlops-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN" // GEN(General) | LOADB (For load balancer)
}
resource "ncloud_subnet" "pri-nks-iot-sbn" {
  name           = "pri-nks-iot-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.7.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.iot-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "GEN" // GEN(General) | LOADB (For load balancer)
}
resource "ncloud_subnet" "pri-mlops-lb-sbn" {
  name           = "pri-mlops-lb-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.60.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.mlops-lb-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "LOADB" // GEN(General) | LOADB (For load balancer)
}
resource "ncloud_subnet" "pri-iot-lb-sbn" {
  name           = "pri-iot-lb-sbn"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.70.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_network_acl.iot-lb-nacl.id
  subnet_type    = "PRIVATE" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "LOADB" // GEN(General) | LOADB (For load balancer)
}
