run:
	echo "Testing with yamllint"
	yamllint ../playbooks/*.yml

	echo "Testing with Ansible Lint"
	ansible-lint ../playbooks/*.yml --profile=production

	echo "Create VM with Debian Bookworm"
	vagrant up

	echo "Run playbook: bookworm-backports.yml"
	ansible-playbook --inventory ./inventory.ini ../playbooks/bookworm-backports.yml
