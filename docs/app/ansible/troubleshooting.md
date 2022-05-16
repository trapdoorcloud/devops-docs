# Troubleshooting
## General debugging tips

Generally you can run your playbook in more verbose, debugging mode by
doing the below. Either individually or combining them.

1.  Prefix your playbook command with `ANSIBLE_DEBUG=1`.

1.  Add more verbosity to output.  Simply add `-v` to your playbook
    arguments.  You can add increase verbosity further, like so, `-vv`
    all the way up to five levels `-vvvvv`.

1.  You can also create a "`debug_`" playbook making use of the
    [ansible debug
    module](https://docs.ansible.com/ansible/latest/modules/debug_module.html).
    See the existing `/playbooks/debug_` playbooks as examples.

1.  Delete your local ansible cache directory and try again.

    ```bash
    rm -rf .cache
    ```

## Error connecting to localhost:6379. Connection refused

You get this:
```
ERROR! Unexpected Exception, this is probably a bug: Error 111 connecting to localhost:6379. Connection refused.
```

It's trying to connect to the Redis server which we use for fact
caching. Is it running and working from where you are running ansible?

## Resetup your ansible python environment

The python virtual environment contains your python dependencies for
the Ansible project. It provides python libraries and binaries such as
ansible itself. The requirements are defined in `requirements.txt`
file.

To resetup this environment you can do this:

Check the value of this variable `VIRTUAL_ENV`.

That will show you current virtual environment.

Deactivate it via the `deactivate` command.

Then delete that directory.

Then follow the commands in the "Setup python environment" step in the
[ansible getting started document](../quickstart).

## Resetup your ansible external roles

It's useful to wipe your local roles_external directory and redownload
it cleanly as per the `requirements.yml` manifest.

To do that you can run this `./full-sync-roles.sh`.

Alternatively you can manually do this:

```bash
rm -rf roles_external
git checkout roles_external/requirements.yml # undelete the file
ansible-galaxy install -r roles_external/requirements.yml
```

## No module named

If you get an error like no module named redis then you need to
[resetup your ansible python environment](#resetup-your-ansible-python-environment).
