#
# Output Variables
#

output "private_ips" {
  value = vsphere_virtual_machine.node.*.default_ip_address
}

output "public_ips" {
  value = vsphere_virtual_machine.node.*.default_ip_address
}