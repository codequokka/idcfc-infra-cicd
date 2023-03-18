resource "cloudstack_ssh_keypair" "id_rsa" {
  name       = "${var.env}-id.rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "cloudstack_instance" "bastion" {
  name             = "${var.env}-bastion"
  service_offering = "light.S1"
  network_id       = var.network_id
  template         = "Rocky Linux 8.4 64-bit"
  zone             = var.zone
  keypair          = cloudstack_ssh_keypair.id_rsa.name
  expunge          = true
}
