#!/bin/sh
[ -z "$AWS_ACCESS_KEY_ID" ] && echo "Missing environment variable:  AWS_ACCESS_KEY_ID" && exit 1;
[ -z "$AWS_SECRET_ACCESS_KEY" ] && echo "Missing environment variable:  AWS_SECERT_ACCESS_KEY" && exit 1;
[ -z "$AWS_SSH_PRIV_KEY_PATH" ] && echo "Missing environment variable:  AWS_SSH_PRIV_KEY_PATH\nPlease set this to the path for your SSH private key\n" && exit 1;

ANS_CODE="../ansible"
source ./common_vars
ansible-playbook ${ANS_CODE}/setup_local_environment.yml --extra-vars "${EXTRA_VARS}"
