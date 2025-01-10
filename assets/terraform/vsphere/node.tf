#
# Virtual Machine node
#

resource "vsphere_virtual_machine" "node" {
#TODO: Move to vars!!
  guest_id    = "rhel7_64Guest"
  count       = var.nodes
  name        = "${var.node_tag}-node-${count.index}"
  folder      = var.vm_folder

  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id

  num_cpus   = 4
  memory     = 8192

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 64
    thin_provisioned = false  #TODO(ag): Update the template to true and change here
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

  }

  extra_config = {
    "guestinfo.ssh_user"            = var.os_user
    "guestinfo.ssh_public_key_data" = file(var.ssh_pub_key_path)
  }
}

data "vsphere_datastore" "datastore" {
  name          = var.datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.template
  datacenter_id = data.vsphere_datacenter.dc.id
}