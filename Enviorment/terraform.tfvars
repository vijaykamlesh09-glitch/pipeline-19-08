
rgkv = {
  rg1 = {
    name     = "kamrg"
    location = "westus"
  }
  rg2 = {
    name     = "kamrg2"
    location = "westus"
  }
}


vnetk = {
  vnetk1 = {
    name                = "kvnet"
    resource_group_name = "kamrg"
    location            = "westus"
    address_space       = ["10.0.0.0/16"]
  }
}



snetk = {
  subnet1 = {
    name                 = "FEnd-subnet"
    resource_group_name  = "kamrg"
    virtual_network_name = "kvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "Bend-subnet"
    resource_group_name  = "kamrg"
    virtual_network_name = "kvnet"
    address_prefixes     = ["10.0.2.0/24"]

  }
}