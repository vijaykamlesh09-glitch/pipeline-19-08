variable "rgkv" {}
variable "vnetk" {}
variable "snetk" {}


module "rk" {
  source = "../Child Module/RG"
  rgkv   = var.rgkv
}



module "vk" {
  depends_on = [module.rk]
  source     = "../Child Module/Vnet"
  vnetk      = var.vnetk
}


module "snk" {
  depends_on = [module.vk]
  source     = "../Child Module/subnet"
  snetk      = var.snetk
}