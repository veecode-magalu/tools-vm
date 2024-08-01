
provider "mgc" {
    # Configuration options
    alias = "sudeste"
    region = "br-se1"
    api_key = var.api_key
}

provider "digitalocean" {
  token = var.do_token
}
