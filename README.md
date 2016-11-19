# Docker Ansible

Simple docker container to run ansible


## Simple setup

```bash
docker run -e "CMD=adhoc" --rm -it -v ${PWD}/config/:/etc/ansible ansible all -m shell -a "ip a"
```

Setup the env variable CMD to adhoc to use adhoc commands as seen here:
http://docs.ansible.com/ansible/intro_adhoc.html


In order to use ansible-playbook set the CMD variable to playbook


## Notes
N/A




