# Bootstrap the system
ftp -o - https://gitlab.com/Verticaleap/openbsd-wg/raw/master/bootstraps/bootstrap_raw.sh | sh

# Run playbook
cd /root/git/openbsd-ansible-dev/ && ansible-playbook install.yml --tags=users,system,pf,wireguard-binaries,wireguard-configs,unbound,vnstatd,ifstated
