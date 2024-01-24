CC=ansible-lint
YL=yamllint

.PHONY : tests

tests:
	$(CC) playbooks/debian-multimedia.yml
	$(CC) playbooks/docker.yml
	$(CC) playbooks/emacs.yml
	$(CC) playbooks/mattermost.yml
	$(CC) playbooks/nodejs.yml
	$(CC) playbooks/qemu-kvm.yml
	$(CC) playbooks/ruby.yml
	$(CC) playbooks/syslog-ng.yml
	$(CC) playbooks/terraform.yml
	$(CC) playbooks/thunderbird.yml
	$(CC) plyabooks/virtualbox.yml
	$(CC) playbooks/yandex-browser.yml

	$(YL) playbooks/*.yml
	$(YL) inventory.yml

