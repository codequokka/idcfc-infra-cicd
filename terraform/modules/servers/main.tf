resource "cloudstack_ssh_keypair" "id_rsa" {
  name       = "${var.env}-id.rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "cloudstack_instance" "bastion" {
  name             = "${var.env}-bastion"
  service_offering = "light.S1"
  network_id       = var.network_id
  template         = var.template
  zone             = var.zone
  keypair          = cloudstack_ssh_keypair.id_rsa.name
  expunge          = true
}

resource "cloudstack_instance" "docker" {
  for_each         = toset(var.docker_hosts)
  name             = "${var.env}-${each.key}"
  service_offering = "light.S2"
  network_id       = var.network_id
  template         = var.template
  zone             = var.zone
  keypair          = cloudstack_ssh_keypair.id_rsa.name
  root_disk_size   = 40
  expunge          = true
}
