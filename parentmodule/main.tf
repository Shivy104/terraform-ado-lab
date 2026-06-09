module "rg" {
  source   = "../childmodule/azurerm_rg"
  rg       = var.rg
}


module "vnet" {
  source   = "../childmodule/azurerm_vnet"
  vnet    = var.vnet
  depends_on = [module.rg]
}

module "subnet" {
  source   = "../childmodule/azurerm_subnet"
  subnet    = var.subnet
  depends_on = [module.rg, module.vnet]
}

module "aks" {
  source   = "../childmodule/azurerm_aks"
  aks    = var.aks
  depends_on = [module.rg, module.vnet, module.subnet]
}