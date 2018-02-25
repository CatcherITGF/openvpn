install-docker:
	ansible-playbook playbooks/docker.yml -i inventory.ini

install-vpn:
	ansible-playbook playbooks/ovpn.yml -i inventory.ini --skip-tags "reset"

create-client:
	ansible-playbook playbooks/ovpn.yml -i inventory.ini --tags "client"

reset-vpn:
	ansible-playbook playbooks/ovpn.yml -i inventory.ini --tags "reset"

test:
	ansible-playbook playbooks/ovpn.yml -i inventory.ini --tags "test"
