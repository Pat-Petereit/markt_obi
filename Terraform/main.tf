resource "digitalocean_droplet" "web" {
  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "fra1"
  size   = "s-1vcpu-512mb-10gb"
  ssh_keys = [ "4d:1f:20:19:5d:5b:e5:a0:23:f6:7e:d7:cf:f0:37:a4" ]
}

resource "digitalocean_droplet" "db" {
  image  = "ubuntu-22-04-x64"
  name   = "db-1"
  region = "fra1"
  size   = "s-1vcpu-512mb-10gb"
  ssh_keys = [ "4d:1f:20:19:5d:5b:e5:a0:23:f6:7e:d7:cf:f0:37:a4" ]
}

output "publicIP" {
  value = digitalocean_droplet.web.ipv4_address
}

output "publicIPDB" {
  value = digitalocean_droplet.db.ipv4_address
}

output "privateIP" {
  value = digitalocean_droplet.web.ipv4_address_private
}

output "PrivateIPDB" {
  value = digitalocean_droplet.db.ipv4_address_private
}