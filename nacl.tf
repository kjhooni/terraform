resource "ncloud_network_acl" "bastion-nacl" {
    name        = "bastion-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
   
 }
 resource "ncloud_network_acl" "ngs-nacl" {
    name        = "ngs-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
   
 }
 resource "ncloud_network_acl" "mysql-nacl" {
    name        = "mysql-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
   
 }
 resource "ncloud_network_acl" "redis-nacl" {
    name        = "redis-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
   
 }
 resource "ncloud_network_acl" "mongodb-nacl" {
    name        = "mongodb-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }
 resource "ncloud_network_acl" "psql-nacl" {
    name        = "psql-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }
  resource "ncloud_network_acl" "mlops-nacl" {
    name        = "mlops-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }
  resource "ncloud_network_acl" "iot-nacl" {
    name        = "iot-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }
  resource "ncloud_network_acl" "mlops-lb-nacl" {
    name        = "mlops-lb-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }
  resource "ncloud_network_acl" "iot-lb-nacl" {
    name        = "iot-lb-nacl"
    vpc_no      = ncloud_vpc.vpc.id
  // below fields is optional
 }