# Git branching workflow

## General workflow

This is the typical way one should submit changes to a project.

1.  Start on the default branch which is normally `master` or `main`.
    If you are not on the correct branch, change to the correct branch,
    via `git checkout master` or `git checkout main`,


1.  Ensure your `master` branch is up to date before starting new
    work. You can update it like so:

    ```
    git fetch origin
    git pull origin master
    ```

1.  Then you would create a new branch off the `master` branch. If, for
    example, you are adding some code to manage rabbitmq, you would name
    your branch something like `firstname_rabbitmq`. You could do this
    as follows:

    ```
    git checkout -b ashley_rabbitmq
    ```

    A `git status` would now show that you are on the
    `ashley_rabbitmq` branch.

1.  You then would do all your work and test your changes etc.

1.  If you have modified existing files, git will show that they have
    been modified. To save or commit them to git you would do this:

    ```
    git commit path/to/file
    ```

    Git will then prompt you for a commit message. You should put an
    appropriate message, see [contributing](../contributing).

    You can also commit all _tracked_ files with a `git commit -a`.

1.  If you added a new file, a `git status` would show the file as
    untracked. You need to tell git to track this file. You could do
    that like so:

    ```
    git add path/to/newfile
    ```

    You can also add all untracked files to git by doing a `git add
    -A`. You would then need to commit your changes when you are
    ready.

1.  To push your branch to the remote code repository (Github) you
    could do something like this:

    ```
    git push origin ashley_rabbitmq:ashley_rabbitmq
    ```

1.  Github will give you a URL once you have pushed your branch. You
    could simply cmd-click on that, or browse to the project and submit a
    pull request there.

1.  If there are no reviewers assigned to review your PR by default,
    you should click the cog icon next to "Assignees" and assign your PR
    to someone to review it for you.

1.  All updates/fixes/additions for this work should go to the same
    branch and PR. For new work start with a new branch and repeat
    this process.
