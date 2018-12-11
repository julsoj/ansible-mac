.DEFAULT_GOAL := ansible

help:
	@echo "galaxy		- Install Ansible Galaxy roles"
	@echo "ansible		- Run ansible"


galaxy:
	ansible-galaxy install -r requirements.yml

ansible:
	ansible-playbook main.yml -i inventory -K
