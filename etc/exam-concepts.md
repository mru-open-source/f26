# Key concepts/questions

Written in chronological order by going through lectures/labs/project instructions, then subsequently grouped into logical categories.

At this point in the course, you should understand:

## General Concepts

1. Definitions of free and open source software (FOSS)
2. Key motivations behind FOSS

## Technical Skills

1. Basic bash syntax (`cd`, `ls`, `mkdir`, `cat`, etc)
2. Git — what does it mean to:
   - Stage and commit changes
   - Push/pull to/from a remote
   - Branch vs fork
   - Merge vs rebase
   - Open a pull request
   - Squash commits (and why do this?)
   - Fast-forward vs merge
   - Cherry pick
   - Bisect
3. Git's email/patch origins
4. The typical collaborative git workflow
5. Writing good issue reports:
   - Check for duplicates
   - Detailed description
   - Minimal reproducable examples
   - Detailed version info
   - Detailed system info
   - Attaching logs (without just dumping a wall of text)
6. Basic regex for searching codebases, with or without `git grep`
7. Using `git blame` and `git log` to understand code history
8. How `git merge` works, at a high level
9. How to resolve merge conflicts
10. At a high level, how to go "back in time" in a git repo either just to look, or to roll back
10. Which operations are dangerous in git
11. Git's `reflog` vs `log`
12. What the `HEAD` pointer is in a git repo

## Community structure and organization

1. Common documents:
   - Where they're found and what they usually look like
   - Examples of common documents
   - What gets rendered on the landing page of a publilcly hosted repo
2. Common AI policies established by FOSS projects
3. Evaluating activity:
   - Issues and pull requests
   - Comments and discussion, age
   - Why things get closed
   - Frequency of activity
   - Organization via labels/tags
4. Roles of users, contributors, and maintainers
5. The "bus factor" and its impact on FOSS
6. Non-developer roles common in FOSS projects, including:
   - Documentation writers and tutorial creators
   - Logo designers and artwork asset creators
   - UI/UX teams
   - Translation
   - Bug triage
   - Testers

7. Common communication channels, which may be:
   - Synchronous (e.g. chat)
   - Asynchronous (e.g. mailing lists)

8. The various meanings of "upstream"
9. Common commit message and pull request conventions
10. Dependency tracking using submodules and custom patches (at a high level)

## Copyright and Licensing

1. Economic vs. moral rights:
   - What is covered in each (at a high level)
   - Which can be transferred to others via licensing (in Canada)
   - A key difference between Canada and US copyright law
2. What can and cannot be protected under copyright, particularly for software projects
3. Difference between permissive and copyleft FOSS licenses
4. Examples of popular permissive and copyleft licenses
5. Current copyright status of generative AI output
6. What is the public domain
7. Contributor license agreements (and their implications)
8. How a project can change its license if desired
