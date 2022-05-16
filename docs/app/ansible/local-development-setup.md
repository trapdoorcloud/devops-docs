# Local development setup

This article will detail a quick setup for ideal Ansible development,
including vagrant.

!!! warning
    This article and playbook is not complete yet.

!!! note
    You need to have down all the steps in the [getting started](../quickstart) article first.

1.  This will configure and setup the following:

    -   Virtualbox
    -   Vagrant, including importing the boxes required
    -   Optionally Emacs/Spacemacs, with an appropriate configuration.

    Simply run this playbook as per:

    ```bash
    ansible-playbook \
      playbooks/setup_system_for_ansible_development.yml
    ```

1.  Start up your first vagrant development box.

1.  Provision your first "ansibled" vagrant development box.

1.  Write some code and see the results.
