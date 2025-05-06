variable "vsphere_datacenter" {
  type = string
}

variable "vsphere_server" {
  type = string
}
variable "vsphere_user" {
  type = string
}
variable "vsphere_password" {
  type = string
}

variable "vm-name" {
  type    = string
  default = "testvm"
}

variable "datastore" {
  type    = string
  default = "vsanDatastore"
}

variable "cluster" {
  type    = string
  default = "Cluster-1"
}

variable "host" {
  type = string
}
variable "network" {
  type = string
}

variable "vm_list" {
  description = "Lista de VMs con su IP y hostname"
  type = list(object({
    name     = string
    ip       = string
    hostname = string
  }))
}