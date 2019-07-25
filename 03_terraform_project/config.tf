data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "3f:c6:78:a0:1f:c9:26:ca:0b:a1:14:6d:70:0c:6a:17"
}

resource "hcloud_server" "terraform_project" {
  name = "test42"
  image = "debian-10"
  server_type = "cx11"
  location = "fsn1"
  ssh_keys = ["${data.hcloud_ssh_key.ssh_key.id}"]
}
