module "dev_cluster" {
    source       = "./aks-dev"
    env_name     = "dev"
    cluster_name = "learnk8scluster"
    instance_type= "standard_d2_v2"
}

module "prod_cluster" {
    source       = "./aks-dev"
    env_name     = "prod"
    cluster_name = "learnk8scluster"
    instance_type= "standard_d11_v2"
}