variable "consul_count" {
    description = ""
    default = 0
}

variable "image" {
    default = "centos-8-x64"
}

variable "region" {
    default = "sfo2"
}

variable "size" {
    default = "s-2vcpu-4gb"
}

// Linux Variables \\
variable "ssh_user" {
  description = ""
  default = "root"
}


variable "ssh_key" {
  description = ""
  default = ""
}


// DNS Variables \\

variable "domain" {
  description = ""
  default = ""
}

variable "service-port" {
  description = ""
  default = ""
}

