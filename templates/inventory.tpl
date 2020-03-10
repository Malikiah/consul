[all:vars]
ansible_user = ${ssh_user}
ansible_ssh_private_key_file = ${ssh_key}
domain = ${domain}
port = ${service-port}

[nodes]
${consul_nodes}