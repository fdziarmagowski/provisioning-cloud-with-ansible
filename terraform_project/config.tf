data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "3f:c6:78:a0:1f:c9:26:ca:0b:a1:14:6d:70:0c:6a:17"
}

resource "hcloud_server" "foo" {
  name = "test01"
  image = "debian-9"
  server_type = "cx11"
  location = "fsn1"
  ssh_keys = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = { "group": "docker_hosts"}
}

output "ipv4_address" {
  value = "${hcloud_server.foo.ipv4_address}"
}

output "hostname" {
  value = "${hcloud_server.foo.name}"
}

output "group" {
  value = "${hcloud_server.foo.labels}"
}
