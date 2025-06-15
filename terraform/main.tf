# terraform/main.tf

resource "mgc_kubernetes_cluster" "k8s_gambiconf" {
  name    = "k8s-gambiconf"
  region  = "br-se1"
  version = "v1.32.3"
}

resource "mgc_kubernetes_nodepool" "k8s_gambiconf_nodepool" {
  name         = "pool-default"
  cluster_id   = mgc_kubernetes_cluster.k8s_gambiconf.id
  flavor_name  = "cloud-k8s.gp1.small"
  replicas     = 1
  min_replicas = 1
  max_replicas = 3
}