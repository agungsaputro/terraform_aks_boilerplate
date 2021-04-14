resource "local_file" "kubeconfig" {
  depends_on   = [aks_kubernetes_cluster.cluster]
  filename     = "kubeconfig"
  content      = aks_kubernetes_cluster.cluster.kube_config_raw
}