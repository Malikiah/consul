data "template_file" "inventory" {
    template =  file("./templates/inventory.tpl")

    vars = {
        ssh_user = var.ssh_user
        ssh_key = var.ssh_key
        consul_nodes = join("\nconsul_s = ", digitalocean_droplet.consul.*.ipv4_address),
        domain = var.domain,
        service-port = var.service-port,
    }

    depends_on = [
        digitalocean_droplet.consul,
    ]
}

resource "null_resource" "cmd" {
    triggers = { 
        template_rendered = data.template_file.inventory.rendered
    }
    provisioner "local-exec" {
        command = "echo '${data.template_file.inventory.rendered}' > ansible/inventory"
    }
}