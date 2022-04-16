variable "location" {
  description = "(Optional) The location in which the resources will be created."
  type        = string
  default     = "ap-south-1"
}

variable "azurerm_container_registry" {
  description = "azure container registry"
  type        = string
  default     = "containerRegistry1"
}

variable "resource_group_name" {
  description = "Optional globally unique per datacenter region domain name label to apply to each public ip address. e.g. thisvar.varlocation.cloudapp.azure.com where you specify only thisvar here. This is an array of names which will pair up sequentially to the number of public ips defined in var.nb_public_ip. One name or empty string is required for every public ip. If no public ip is desired, then set this to an array with a single empty string."
  type        = string
  default     = "apr-11-2022"
}

variable "sku" {
  description = "Same as ssh_key, but allows for setting multiple public keys. Set your first key in ssh_key, and the extras here."
  type        = string
  default     = "premium"
}
variable "admin_enabled" {
  type        = bool
  description = "Delete datadisk when machine is terminated."
  default     = false
}

variable "zone_redundancy_enabled" {
  type        = bool
  description = "Delete datadisk when machine is terminated."
  default     = true
}
variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}
variable "public_network_access_enabled" {
  type        = bool
  description = "Delete datadisk when machine is terminated."
  default     = false
}

