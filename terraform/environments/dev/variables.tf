variable "env" {
  type    = string
  default = "dev"
}

variable "api_url" {
  type    = string
  default = "https://compute.jp-west.idcfcloud.com/client/api"
}

variable "api_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

variable "network_id" {
  type    = string
  default = "1a165d5d-dbf2-470a-a054-4a518183a12a"
}

variable "zone" {
  type    = string
  default = "augusta"
}

variable "cidr_list" {
  type = list(string)
}

variable "template" {
  type    = string
  default = "Rocky Linux 8.4 64-bit"
}
