AL=ansible-lint
YL=yamllint

.PHONY : tests

tests:
	$(YL) playbooks/*.yml
	$(YL) inventory.yml

	$(AL) \
		--profile production \
		--strict \
		playbooks/*.yml
