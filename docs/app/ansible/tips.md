# Tips

Various cool tips for Ansible.

## cluster SSH with Ansible and tmux

Check out this [blog
post](http://divansantana.com/tmux-cssh-and-ansible/index.html) which
explains all.

## Testing your changes easily when it's in an external role

Our code base is not monolithic, so it's painful sometimes to make
changes in external roles and yet test it from the core repository,
where everything is "tied" together.

One could, edit the code under `roles_external/myrole` and make
changes there directly and test your changes.  This is bad because,
it's not under version control and pulling the latest ansible roles
will wipe your local changes resulting in code loss.  You then also
need to copy your changes back to the git repository for `myrole`.

The other bad option is to do your changes in a branch of the git
repository for `myrole`, push your changes, pull that branch by
temporarily setting `requirements.yml` to that branch.  This is a bit
better but still painful because you need to commit, push, pull (with
galaxy), test, repeat.

The better option is to simply do this:

```bash
rm -rf ./roles_external/myrole
ln -s ../../ansible-role-myrole ./roles_external/myrole
```

So that basically just replaces the role stored in `roles_external`
with a symlink to the local directory where the git repository for
`myrole` is stored.  As you make changes in the git repository, you
can immediately test your changes without committing, pushing or
pulling.

Example:

```bash
rm -rf ./roles_external/rabbitmq
ln -s ../../ansible-role-rabbitmq ./roles_external/rabbitmq
```
