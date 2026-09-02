# Lab 01: Basic bash
*September 3, 2026*

Nearly all open source software projects (and indeed, commercial projects) assume some knowledge of the command line. While it's possible you might end up working in Powershell or some other shell language, the most common is [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).

Depending on your degree program, you may have more or less experience working in a command-line environment. If you are already comfortable with it, I encourage you to come and help your classmates. We will cover the following topics:

- Bash syntax
- Basic file system operations
- Tab completion, bash history, and other tricks
- Logging in to remote servers

## Activity Description
After introducing you to a few common commands, I will turn you loose to start practicing on [Bandit](https://overthewire.org/wargames/bandit/). This is aimed at people interested in cybersecurity challenges, but the first 5-10 levels are a great way to learn about different bash commands.

I expect you to gain familiarity with the following:

### Basic navigation
- `pwd` display the name of the current working directory
- `cd` change current working directories
- `ls` list the contents of a directory
- `cp` copy a file
- `mv` copy a file, remove the original — also used for renaming

### Reading and modifying files
- `cat`,`less` display the contents of a file
- `rm` remove a file
- `mkdir` create a new directory
- `rmdir` remove an empty directory

### Other useful commands
- `<` and `>` redirect standard input and output
- `echo` print to the terminal
- `|` pipe the result of the previous command into the next one
- `ssh` log in to a remote server
- `man` display the manual entry for a given command
- `find` search for a file
- `grep` search for patterns inside files
- `exit` exit shell (log out)

All of these commands have various options that can be modified through the use of **flags** (boolean switches) or **parameters** (arguments with values). For example, by default `ls` does not show hidden files, but you can use the `--all` (or `-a` for short) flag to include them.

> To learn about the various options in a command, try using the `man` command, e.g. `man ls` to read the manual. Yes, I know AI can tell you this too. Try to resist the temptation to just get the quick answer.

## Deliverables
To count this as one of your labs for credit, show me how far you got in Bandit.

If you were unable to make it to the scheduled tutorial, email me within 1 week describing:
- The highest Bandit level you solved
- The command you used to solve it

Note that there are a lot of Bandit levels, I don't expect you to complete past the first 5 or so!