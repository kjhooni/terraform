resource "ncloud_login_key" "loginkey" {
  key_name = "simplatform-key"
}

resource "ncloud_server" "simplatform-bastion" {
  subnet_no                 = ncloud_subnet.pub-bastion-sbn.id

  name                      = "simplatform-bastion"
  server_image_product_code = "SW.VSVR.OS.LNX64.CNTOS.0708.B050"
  login_key_name            = ncloud_login_key.loginkey.key_name
}

resource "ncloud_server" "simplatform-ngs" {
  subnet_no                 = ncloud_subnet.pri-ngs-sbn.id

  name                      = "simplatform-ngs"
  server_image_product_code = "SW.VSVR.OS.LNX64.CNTOS.0708.B050"
   server_product_code       = "SVR.VSVR.HICPU.C004.M008.NET.HDD.B050.G002"
  login_key_name            = ncloud_login_key.loginkey.key_name
}

resource "ncloud_block_storage" "ngs-storage" {
    server_instance_no = ncloud_server.simplatform-ngs.id
    name = "ngs-storage"
    size = "1000"
    disk_detail_type = "HDD"
}

resource "ncloud_nas_volume" "nas" {
    volume_name_postfix            = "nas01"
    volume_size                    = "1000"
    volume_allotment_protocol_type = "NFS"
}

resource "ncloud_public_ip" "public_ip" {
  server_instance_no = ncloud_server.simplatform-bastion.id
}