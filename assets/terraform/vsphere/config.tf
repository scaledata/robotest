variable "vsphere_user" {
  description = "vSphere username"
  type        = string
}

variable "vsphere_password" {
  description = "vSphere password"
  type        = string
}

variable "vsphere_server" {
  description = "vSphere server"
  type        = string
}

variable "datacenter" {
  description = "The vSphere datacenter where resources will be created"
  type        = string
}

variable "cluster" {
  description = "The vSphere cluster where resources will be created"
  type        = string
}

variable "datastore" {
  description = "The vSphere datastore where VM disks will be stored"
  type        = string
}

variable "vm_folder" {
  description = "The vSphere folder where VMs will be created"
  type        = string
}

variable "network" {
  description = "Network for VM NIC."
  type        = string
}

variable "template" {
  description = "Template to clone VMs from"
  type        = string
}

variable "node_tag" {
  description = "vSphere-friendly cluster name to use as a prefix for resources."
  type        = string
}

variable "vm_type" {
  description = "Type of VM to provision"
  type        = string
}

variable "os_user" {
  description = "SSH user to login onto nodes"
  type        = string
}

variable "ssh_pub_key_path" {
  description = "Path to the public SSH key."
  type        = string
}

variable "nodes" {
  description = "Number of nodes to provision"
  type        = number
  default     = 1
}

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = var.datacenter
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}