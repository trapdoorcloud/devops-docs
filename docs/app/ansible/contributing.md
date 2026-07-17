# Contributing

This document is about contributing guidelines relating to our Ansible
code infrastructure. If you follow these contributing guidelines your
code will be merged much quicker and easier for all.

Items in this section are required, not optional. If your PR does not
comply to the various items in this section, your PR will *not* be
accepted.

1.  Your git author name, needs to match **exactly** to your SnapPic
    email address name.

    1. Double check what your email name is *exactly* by going to your
       email box and looking at your setting.

    1. Then update your git author name accordingly.

    ```bash
    git config --global user.name "Your Name Exactly as per email"
    git config --global user.email "youremailaddress@example.com"
    ```

    Example is:

    ```bash
    git config --global user.name "Ashley Kleynhans"
    git config --global user.email "ashley@example.com"
    ```

1.  All changes submitted to Ansible should be via a pull
    request. Your changes should be in your own branch and your pull
    request should be against the `master` branch.

1.  Your git branch *has to* conform to this standard.

    * You git branch name should only contain [*word
      characters*](https://en.wikipedia.org/wiki/Character_(computing)#Word_character). That
      is, only the alphabet A-Z (upper or lower case), the digits 0 to
      9, and the underscore are acceptable. For example
      `firstname_mydescription` is acceptable. `firstname-mydescription`
      is not.

    * Be prefixed by the primary author firstname. For example
      `ashley_mydescription`.

1.  Test your code properly and ensure it works!

1.  Any and all changes made to the project in your PR, should update
    the `CHANGELOG.md` with a decent description.

1.  Your git commit log should also contain a short summary of your
    change. The first line (summary line) in your git commit log
    should be short description (not longer then 49 characters),
    followed by a line break, and then a detailed description of your
    work. If there is an issue open for your work, you should link it
    appropriately.

1.  Your code needs to comply to the relevant [style
    guide](https://en.wikipedia.org/wiki/Style_guide) for Ansible.

1. Your code needs to comply with these 3 software development principles:
    * [KISS](https://en.wikipedia.org/wiki/KISS_principle)
    * [DRY](https://en.wikipedia.org/wiki/Don't_repeat_yourself)
    * [YAGNI](https://en.wikipedia.org/wiki/You_aren't_gonna_need_it)

1. For good security and bank policy requirements the following
   security principles need to be adhered to as well:

    * [Principle of least privilege](https://en.wikipedia.org/wiki/Principle_of_least_privilege)
    * Any sensitive information, like passwords, private keys etc,
      should be encrypted with Ansible vault.

