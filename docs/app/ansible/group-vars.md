Ansible group variables (in the playbooks/group_vars) directory are sorted
alphabetically by Ansible, so a group_var file that begins with a `z` for
example, will take higher priority than a group_var file that begins with
an `a`.

We also have group vars  that apply to all hosts (all.yml) and ones that
apply to the inventory group, for example `openvpn_hosts`
