terraform {
  cloud {
    organization = "veecode"

    workspaces {
      name = "veecode-tools-vm"
    }
  }
}