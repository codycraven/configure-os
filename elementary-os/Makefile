.PHONY: all
all: .ensure-sudo .install-ansible
	ansible-playbook -i "localhost," -c local local-setup.yml
	test -L ~/.config/autokey/data/Mac\ Bindings || ./hotkey-remap.sh

.PHONY: .ensure-sudo
.ensure-sudo:
	@echo "Ensure sudo access"
	sudo echo

.PHONY: .install-ansible
.install-ansible:
	which ansible-playbook || sudo apt update
	which ansible-playbook || sudo apt install -y software-properties-common
	which ansible-playbook || sudo apt-add-repository -y ppa:ansible/ansible
	which ansible-playbook || sudo apt update
	which ansible-playbook || sudo apt install -y ansible

