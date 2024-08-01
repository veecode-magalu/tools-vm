
variable "api_key" {
  description = "The API key for the mgc provider"
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "tools-vm"
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "cloud-gp1.medium"
#  default     = "cloud-bs1.xsmall"
}

variable "vm_image" {
  description = "Virtual machine image"
  type        = string
  default     = "cloud-ubuntu-24.04 LTS"
}

variable "vm_key" {
  description = "Virtual machine ssh_key name"
  type        = string
  default     = "veecode-pubkey"
}

variable "do_token" {
  description = "The API key for the digitalocean provider"
  type        = string
}

variable "environment_domain" {
  description = "Environment domain"
  type        = string
  default     = "mgc.vee.codes"
}
