# Configure the Azure Provider
provider "azurerm" {
  /*whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider*/
  subscription_id = "c3a419d3-951d-4355-9cf3-dc49da58a664"
  client_id       = "e9bef17b-53f3-4954-b1c0-3d1b6082ef56"
  client_secret   = "~mW7Q~J-APaSEFV5Es2OswEy~ZZXSJ4Wjtlsn"
  tenant_id       = "b45ba00e-ef83-40b4-ad06-9d7078cdbc30"

  features {}
}

terraform {
  required_version = ">=1.1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}
