ansible-files: /usr/local/bin/ansible
	ansible-playbook ansible/basic.yml -K

/usr/local/bin/ansible: /usr/local/bin/pip
	sudo pip install -I ansible

/usr/local/bin/pip:
	sudo easy_install pip
