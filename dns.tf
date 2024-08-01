
data "digitalocean_domain" "environment_domain" {
  name = var.environment_domain
}

resource "digitalocean_record" "simple_vm" {
  domain = data.digitalocean_domain.environment_domain.name
  type   = "A"
  name   = var.vm_name
  value  = mgc_virtual_machine_instances.simple_vm.network.public_address
}

resource "digitalocean_record" "wildcard_vm" {
  domain = data.digitalocean_domain.environment_domain.name
  type   = "A"
  name   = "*.${var.vm_name}"
  value  = mgc_virtual_machine_instances.simple_vm.network.public_address
}
