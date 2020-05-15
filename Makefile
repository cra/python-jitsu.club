@deploy:
	ansible-playbook site.yml


deploy-html:
	ansible-playbook site.yml --start-at-task "jitsu : Ensure directory exists"
