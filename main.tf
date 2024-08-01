terraform {
    required_providers {
        mgc = {
        source = "MagaluCloud/mgc"
        }
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
    }
}

# Create a VM and associate a Public IP
resource "mgc_virtual_machine_instances" "simple_vm" {
  provider = mgc.sudeste
  name     = var.vm_name
  machine_type = {
    name = var.vm_size
  }
  image = {
    name = var.vm_image
  }
  network = {
    associate_public_ip = true
    delete_public_ip    = true
  }

  ssh_key_name = var.vm_key
}
