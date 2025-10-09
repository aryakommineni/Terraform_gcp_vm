variable "project_id"        { type = string }
variable "region"            { type = string }
variable "zone"              { type = string }
variable "instance_name"     { type = string }
variable "machine_type"      { type = string  default = "e2-micro" }
variable "image"             { type = string  default = "projects/debian-cloud/global/images/family/debian-12" }
variable "boot_disk_gb"      { type = number  default = 10 }
variable "network"           { type = string  default = "default" }
variable "subnetwork"        { type = string  default = null }
variable "instance_sa_email" { type = string }
variable "labels"            { type = map(string) default = {} }
variable "tags"              { type = list(string) default = [] }
variable "metadata"          { type = map(string) default = {} }
