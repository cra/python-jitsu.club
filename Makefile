MAIN_PLAYBOOK=site.yml

list-tasks:
	ansible-playbook --list-tasks ${MAIN_PLAYBOOK}


@deploy:
	ansible-playbook ${MAIN_PLAYBOOK}


deploy-html:
	ansible-playbook ${MAIN_PLAYBOOK} --start-at-task "jitsu : Ensure directory exists"
