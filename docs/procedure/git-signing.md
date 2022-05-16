# Enabling git GPG commit signing

This is a good practice to sign all your code commits with your
personal GPG key.

If you haven't setup your GPG key, google around how to do that.

Once you have done so, you can enable GPG code commit signing like so:

In your `~/.gitconfig` you would have something like this:

```
[user]
	name = Ashley Kleynhans
	email = ashley@getsnappic.com
	signingkey = 1CE52210395567C1
[commit]
	gpgsign = true
```

This signs all my GPG commits with my GPG key and email address.
