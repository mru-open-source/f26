# Interactions with Upstream

When contributing to an open-source project, you often need to work with changes from other repositories, especially the original repository you forked.

### What does upstream mean?

The term **upstream** can have different meanings depending on the context:

- **Original repository:** The main repository from which your fork was created.
- **Project dependency:** Another project or library that your project relies on.
- **Contributing changes:** Sending your changes back to the original project is often described as "upstreaming" them.

To connect the original repository as a remote, use:

`git remote add upstream <url>`

### Getting changes from upstream

There are several ways to incorporate changes from other branches or repositories:

- **Pull:** `git pull` combines fetching remote changes with integrating them into your current branch.
- **Rebase:** Rebasing onto `upstream/main` reapplies your commits onto a new base, allowing you to incorporate changes from upstream.
- **Cherry-pick:** `git cherry-pick <commit>` applies a specific commit from another branch to your current branch as a new commit.

Cherry-picking is useful when you need one particular change instead of an entire branch. It can also help separate your own work into multiple commits.

If a conflict occurs during cherry-picking, resolve the affected files and continue with:

`git cherry-pick --continue`

To cancel the operation, use:

`git cherry-pick --abort`

### Following upstream conventions

Open-source projects often have specific contribution guidelines. Following them makes contributions easier to review and maintain.

- **Commit messages:** Projects may require a particular format, such as Conventional Commits, or provide guidelines in a `.gitmessage` file.
- **Pull requests:** Projects may require contributors to squash commits into one commit or reference the related issue.
- **Templates:** Some projects provide pull request templates to help contributors include the necessary information.

Before submitting a contribution, check the project's guidelines and follow its conventions.

### Reporting issues upstream

Sometimes a bug that appears to originate in one project is actually caused by an interaction between multiple projects or dependencies.

For example, a problem initially attributed to Inkscape was related to an interaction between LuaTeX and CapyPDF.

When reporting an issue to an upstream project, link to the related issue in the downstream project whenever possible. GitHub and GitLab support cross-project linking, although cross-platform linking is not supported in the same way.

Reporting issues upstream is also a useful way to become more involved in open-source communities and gain experience working across projects.