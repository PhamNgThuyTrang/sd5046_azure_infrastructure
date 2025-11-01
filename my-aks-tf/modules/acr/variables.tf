variable "name" {
  type          = string
  description   = "container registry cluster name"
}
variable "region" {
  type          = string
  description   = "azure region where the aks cluster must be created, this region should match where you have created the resource group, vnet and subnet"
}

variable "resource_group_name" {
  type          = string
  description   = "azure resource group name where the aks cluster should be created"
}

variable "principal_id" {
  type          = string
  description   = "The Principal ID associated with this Managed Service Identity"
}