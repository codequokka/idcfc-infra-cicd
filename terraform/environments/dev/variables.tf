variable "api_url" {
  type    = string
  default = "https://compute.jp-west.idcfcloud.com/client/api"
}

variable "api_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "network_id" {
  type = string
}

variable "zone" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}
