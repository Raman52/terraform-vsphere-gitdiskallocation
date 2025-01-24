variable "vsphere_user" {
  description = "The vSphere username"
  type        = string
  default     = "administrator@vsphere.local"
}

variable "vsphere_password" {
  description = "The vSphere password"
  type        = string
  sensitive   = true
}
variable "vsphere_server" {
  description = "The vSphere server IP or hostname"
  default     = "192.168.2.30"
}
variable "vsphere_datacenter" {
  description = "The name of the datacenter in vSphere"
  type        = string
  default     = "Datacenter"
}

variable "vsphere_datastore" {
  description = "The name of the datastore where VMs and disks are stored"
  type        = string
  default     = "TLAB-FC-LUN02"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "nodisk1"
}
variable "vsphere_network" {
  description = "The name of the vSphere network to connect the virtual machine."
  type        = string
  default     = "VM Network"
}
variable "disk_count" {
  description = "The number of disks to attach to the instance."
  type        = number
  default     = 2
}
variable "disk_sizes" {
  description = "List of disk sizes in GB"
  type        = list(number)
  default     = [16,20]
  
}
