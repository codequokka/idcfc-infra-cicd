resource "cloudstack_ipaddress" "public" {
  network_id = var.network_id
  zone       = var.zone
}

resource "cloudstack_firewall" "public_ipaddress" {
  ip_address_id = cloudstack_ipaddress.public.id
  managed       = true
  rule {
    cidr_list = var.cidr_list
    protocol  = "tcp"
    ports     = ["22"]
  }
}

resource "cloudstack_port_forward" "ssh" {
  ip_address_id = cloudstack_ipaddress.public.id
  forward {
    protocol           = "tcp"
    private_port       = 22
    public_port        = 22
    virtual_machine_id = var.bastion_id
  }
}
