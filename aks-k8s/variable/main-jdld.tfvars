#Variables initialization

###
# Core
###

rg_infr_name = "infr-k8cicd-noprd-rg1"

###
# Log & Certificate
###

log_analytics_workspace = {
  name = "demojdldloganwk1" #The log analytics workspace name must be unique
  sku  = "PerGB2018"        #Refer to https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 

  solutions = [{
    name      = "ContainerInsights"
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }]
}

key_vault = {
  name = "demoazintroaksjdld" #The kay vault name must be unique
  sku  = "standard"
}

###
# AKS
###
kubernetes_cluster = {
  name       = "azuredevops-demo"
  dns_prefix = "azuredevopsdemo" #Please see https://aka.ms/aks-naming-rules
}
