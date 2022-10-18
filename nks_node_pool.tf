resource "ncloud_nks_node_pool" "mlops-node-pool" {
  cluster_uuid   = ncloud_nks_cluster.mlops-cluster.uuid
  node_pool_name = "mlops-node-pool"
  node_count     = 2
  product_code   = "SVR.VSVR.STAND.C002.M008.NET.SSD.B050.G002"
  subnet_no      = ncloud_subnet.pri-nks-mlops-sbn.id
#   autoscale {
#     enabled = true
#     min = 1
#     max = 2
#   }
}

resource "ncloud_nks_node_pool" "iot-node-pool" {
  cluster_uuid   = ncloud_nks_cluster.iot-cluster.uuid
  node_pool_name = "iot-node-pool"
  node_count     = 2
  product_code   = "SVR.VSVR.STAND.C004.M016.NET.SSD.B050.G002"
  subnet_no      = ncloud_subnet.pri-nks-iot-sbn.id
#   autoscale {
#     enabled = true
#     min = 1
#     max = 2
#   }
}