
output "instance_id" {
  value = mgc_virtual_machine_instances.simple_vm.id
}

output "final_name" {
  value = mgc_virtual_machine_instances.simple_vm.final_name
}

output "public_ip" {
  value = mgc_virtual_machine_instances.simple_vm.network.public_address
}
