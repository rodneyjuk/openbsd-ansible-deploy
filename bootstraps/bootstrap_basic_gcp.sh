# Bootstrap the system
ftp -V -o - https://github.com/findelabs/openbsd-ansible-deploy/raw/master/bootstraps/bootstrap_raw.sh | sh

# Extra variables for playbook
extra_vars="\
role_sysctl_task=gcp_sysctl"

# Run playbook
cd /root/git/openbsd-ansible-deploy/ && ansible-playbook install.yml --tags=users,system,sysctl,gcp --extra-vars="$extra_vars"
