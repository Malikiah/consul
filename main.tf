resource "digitalocean_droplet" "consul" {
    count = var.consul_count
    name = "${count.index + 1}" > 9 ? "${var.region}-consul-s${count.index + 1}" : "${var.region}-consul-s0${count.index + 1 }"
    image = var.image
    region = var.region
    size = var.size
    private_networking = true
    ssh_keys = [ 
        data.digitalocean_ssh_key.malikiah.id
    ]
    tags = [
        "consul",
        var.image,
    ]
    
}