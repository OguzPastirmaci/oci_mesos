variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

variable "compartment_ocid" {}
variable "ssh_public_key" {}
variable "ssh_private_key" {}

locals {
  ssh_public_key = "${file("${var.ssh_public_key}")}"
  ssh_private_key = "${file("${var.ssh_private_key}")}"
}

variable "instance_image_ocid" {
  default = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaaejc26zn2cxfk5p2nhyuvlcufpd7oggqam2giqfdxf7f65wntuca"
}

variable "image_display_name" {
  default = "Bastion"
}

variable "availability_domain" {
  default = "sDei:EU-FRANKFURT-1-AD-1"
}

variable "boot_instance_shape" {
  default = "VM.Standard2.1"
}

variable "BootStrapFile" {
  default = "./bootstrap.sh"
}
