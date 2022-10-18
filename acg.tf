resource "ncloud_access_control_group" "bastion-acg" {
  name        = "bastion-acg"
  vpc_no      = ncloud_vpc.vpc.id
}
resource "ncloud_access_control_group" "ngs-acg" {
  name        = "ngs-acg"
  vpc_no      = ncloud_vpc.vpc.id
}

resource "ncloud_access_control_group_rule" "bastion-acg-rule" {
  access_control_group_no = ncloud_access_control_group.bastion-acg.id

  inbound {
    protocol    = "TCP"
    ip_block    = "183.111.170.128/27"
    port_range  = "22"
    description = "디딤 원격접속"
  }

  outbound {
    protocol    = "TCP"
    ip_block    = "0.0.0.0/0" 
    port_range  = "1-65535"
    description = "accept 1-65535 port"
  }
}

resource "ncloud_access_control_group_rule" "ngs-acg-rule" {
  access_control_group_no = ncloud_access_control_group.ngs-acg.id

  inbound {
    protocol    = "TCP"
    ip_block    = "10.0.100.6/32"
    port_range  = "22"
  }

  outbound {
    protocol    = "TCP"
    ip_block    = "0.0.0.0/0" 
    port_range  = "1-65535"
    description = "accept 1-65535 port"
  }
}
