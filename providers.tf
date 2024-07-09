terraform {
  required_providers {
    # https://registry.terraform.io/providers/Telmate/proxmox/latest/docs
    proxmox = {
      source = "thegameprofi/proxmox" #change from Telemate/proxmox
      version = "2.10"
    }
  }
}

provider "proxmox" {
  # Configuration options

  # Allowed simultaneous Proxmox processes (defaults: 4)
  # Setting pm_parallel = 1 to cope with Provider errors (and resource contention) - workaround "Cycle" errors and API timeouts
  pm_parallel = 1

  # Timeout value (seconds) for Proxmox API calls (default: 300)
  pm_timeout = 600
}