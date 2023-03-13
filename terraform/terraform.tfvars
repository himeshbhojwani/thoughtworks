address_space                   = ["10.52.0.0/16"]
subnet_prefix                   = [
    {
      ip                = ["10.52.0.0/24"]
      name              = "snet-aks-ne-001"
      serviceendpoint   = ["Microsoft.Web"]
      privateendpoint   = "false"
    }]