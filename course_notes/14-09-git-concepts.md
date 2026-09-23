# Git Concepts

> [!IMPORTANT]
> Since there isn't any precedant on how to take notes and since the Git lecture was mostly just the commands (and can be seen on the lecture slides) I have just written more about that as well some information I could help add.

Git is the most widley used software for version control, made by Linus Torvalds as a way to keep track of the progress of Linux. There are a few `git <command>`s to know:

- `clone`: create local copy of an online repository
- `init`: initializes directory as a Git repo (if you need a remote repo you need to run `remote`)
- `remote add <name> <url>`: remote repo location (usually name is origin; URL is the GitHub/GitLab/etc. repo link)
- `remote -v`: lists the remote repositories connected to local Git repo

> [!INFO]
> Remote repos are not necessary and something like GitHub has more things to do than just keep a copy of changes online (ex. CI/CD).

- `log`: displays git commit history
- `status`: shows the git status (staged, commited, untracked, etc.) of files in the repo
- `add`: adds changes made in file to a "staging" area (I like to think of it as putting the changes you made into a box)
- `commit`: groups changes added into staging area with `git add` with a git hash and a commit message (think of it as packing up the box and writing a message on the box for future reference)
- `push`: sends changes made on local machine to remote repository
- `pull`: downloads remote repository changes (`fetch`) and merges/rebases into local repo

> [!CAUTION]
> Direcion of arrow diagrams in lecture slides when it comes to push/pull is incorrrect.

- `checkout <branch>`: working branch is the one we passed in to check out and we can use `-b` flag to create a new branch if needed (equivalent to `git branch <branch>`)
- `switch`: equivalent to `checkout` as far as I can see? `-b` flag is also the same thing
git log, status, add, commit, push, pull, reset, init, clone
- `merge <branch>`: merges the current branch into `<branch>`

> [!WARNING]
> When merges happen but there are competing changes happening in the same place it leads to a merge conflict and you have to go in manually to select what to do (keep current or/and incoming changes, or have something else entirely).

- `rebase <branch>`: rewrites current branch history into a unified history for `<branch>`

> [!INFO]
> Usually in my experience if you can get away with `merge` it is almost always used instead of `rebase` to help keep history distinct for future reference especially when working on a project with others. Like how `rebase` works with `fetch` to make the `pull` command, `rebase` is always what is used for "squashing" changes, which is when multiple commits are condensed into 1 usually at the end of a PR as it gets merged to `main` (it can usually be done in just 1 button in GitHub but `git rebase -i HEAD~<n>` can be used to run an interactive `rebase` command to `pick` the commit from `<n>` steps back and `sqash` the rest).

- `stash`: "pushes" uncommited changes to stash it away temporarily if need be (ex. during a `checkout`) which can later be popped out with `stash pop`
- `reflog`: private local log of every movement your `HEAD` pointer has made (`log` on the other hand does not show this)

> [!INFO]
> `HEAD` is just the current branch pointer (where you are in the git repo commit-wise) and can be traversed with a tilda (ex. `HEAD~1` in `git reset --soft HEAD~1` does a soft reset back to the commit right before the one the branch is currently on).

- `reset <mode>`: to rollback on changes (`--soft` mode undoes last commit but keeps changes staged while `--hard` erases history completely)

> [!INFO]
> To have rewritten history pushed to remote repo you have to run a `push --force` after a `reset --hard` (the history can still be found online if it's on GitHub and you know the correct URL to commit).
