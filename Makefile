.PHONY: tests

tests:
	# pip3 install pip -U

	# pip3 install -r REQUIREMENTS -U

	# wget https://app.vagrantup.com/debian/boxes/bookworm64/versions/12.20240814.1/providers/virtualbox/unknown/vagrant.box -O debian-bookworm64.box
	# vagrant box add debian/bookworm64 ./debian-bookworm64.box

	# vagrant up && ansible-playbook \
	# 	--inventory tests/inventory.ini \
	# 	playbooks/bookworm-backports.yml

	# vagrant destroy --force

	# vagrant up && ansible-playbook \
	# 	--inventory tests/inventory.ini \
	# 	playbooks/debian-multimedia.yml

	ansible-lint
