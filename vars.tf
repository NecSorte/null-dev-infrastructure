variable "ssh_public_key_path" {
   description = "SSH public Key to inject via cloud-init"
   type = string 
   default = "~/.ssh/terraform_proxmox_ssh_key_nopassword.pub"
}

variable "proxmox_node" {
    default = "Node1"
}

variable "proxmox_dns" {
#    default = "127.0.0.1"
}

variable "template_name" {
    default = "ubuntu-noble-cloud"
}

variable "ssh_private_key_path" {
    default   = "~/.ssh/terraform_proxmox_ssh_key_nopassword"
    sensitive = true
}

variable "k3s_token" {
  default = "myk3stoken"
}
