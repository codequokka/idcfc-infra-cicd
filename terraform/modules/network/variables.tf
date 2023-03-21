variable "network_id" {
  type = string
}
variable "zone" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}

variable "bastion_id" {
  type = string
}
