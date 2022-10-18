data "ncloud_nks_versions" "version" {
  filter {
    name = "value"
    values = ["1.23.9"]
    regex = true
  }
}

resource "ncloud_nks_cluster" "mlops-cluster" {
  cluster_type                = "SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002"
  k8s_version                 = data.ncloud_nks_versions.version.versions.0.value
  login_key_name              = ncloud_login_key.loginkey.key_name
  name                        = "mlops-cluster"
  lb_private_subnet_no        = ncloud_subnet.pri-mlops-lb-sbn.id
  kube_network_plugin         = "cilium"
  subnet_no_list              = [ ncloud_subnet.pri-nks-mlops-sbn.id ]
  vpc_no                      = ncloud_vpc.vpc.id
  zone                        = "KR-1"
  log {
    audit = false
  }
}

resource "ncloud_nks_cluster" "iot-cluster" {
  cluster_type                = "SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002"
  k8s_version                 = data.ncloud_nks_versions.version.versions.0.value
  login_key_name              = ncloud_login_key.loginkey.key_name
  name                        = "iot-cluster"
  lb_private_subnet_no        = ncloud_subnet.pri-iot-lb-sbn.id
  kube_network_plugin         = "cilium"
  subnet_no_list              = [ ncloud_subnet.pri-nks-iot-sbn.id ]
  vpc_no                      = ncloud_vpc.vpc.id
  zone                        = "KR-1"
  log {
    audit = false
  }
}