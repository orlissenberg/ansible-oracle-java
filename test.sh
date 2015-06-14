#!/usr/bin/env bash

CURRENT_DIR=${PWD}
TMP_DIR=/tmp/ansible-test

mkdir -p $TMP_DIR 2> /dev/null

cat << EOF > $TMP_DIR/hosts
[webservers]
localhost ansible_connection=local
EOF

mkdir -p $TMP_DIR/group_vars 2> /dev/null
cat << EOF > $TMP_DIR/group_vars/webservers

EOF

cat << EOF > $TMP_DIR/ansible.cfg
[defaults]
roles_path = $CURRENT_DIR/../
host_key_checking = False
EOF

export ANSIBLE_CONFIG=$TMP_DIR/ansible.cfg

ansible-playbook playbook.yml -i $TMP_DIR/hosts
