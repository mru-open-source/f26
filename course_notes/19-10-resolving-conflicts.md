# Resolving Conflicts in Git - Oct 19th

## _Looking at why merge conflicts occur, and the strategies and tools that can be used to resolve them._

Example: We're working on one file, but in two different branches (A and B). Take the following passage in the original file (from the main branch):
> ```python 
> for i in range(10): # main \
>   do_something_with(i)
> ```

From Branch A we make the following changes:
> ```python
> # CHANGED "i" to "n"
> for n in range(10):
>   do_something_with(n)
> print("Done"
> ```

* Merging this won't lead to any conflict

But if, from Branch B, we make the following changes:
> ```python
> print("Starting loop...")
> for i in range(20): # B
>   do_something_with(i)
> ```

* And try to merge, we'll run into a conflict.
* To avoid this, there are a couple strategies we can use.

First, it's helpful to understand why we're running into conflict. When we run `git merge`, by default we're trying to "fast forward", i.e., grab the 
head pointer from the main branch and move it to the branch we're in. This works if the main branch hasn't been updated since we've made our changes.
If the main branch _was_ updated, then the computer won't know which version of the workspace is the actual head, and merging will fail.

---

### The Basics of a 3-Way Merge
1. Run `git merge <the-branch-we-want-to-merge-into>`. If there are conflicts, this will return an error message locating the files.
2. Open these files and resolve the conflicts; the problematic sections will have been automatically annotated.
3. After resolving the conflicts, update your files `git add <changed-file>` and continue the merging process `git merge --continue`
* PS: The latter command also tells us what's being merged, similar to git status.

But we don't have to follow this exact process, step by step, to resolve conflicts. You might run:
* `git merge --abort` to abandon the failed merge attempt altogether, returning the workspace to its original state.
* `git log` to look at our commit history across branches. What version of the directory are we in conflict with?
* `git checkout <commit>` to look at the workspace at the time of any given commit. We can use the command above to pick which one
  * e.g. We can run `git checkout origin/main` to look at the workspace in its original state.
  * PS: We can't edit anything from here!

While editing the files in conflict themselves, we might run:
* `git restore <file>` to undo our changes if the results are unsatisfying. **Be careful, these changes can't be recovered.**
* `git commit -m` to alter the commit message we used before trying to merge. I
* `git revert <commit>` to just get rid of the previous commit altogether and use a new one
  * PS: the text editor this opens can be used to document why we're going with this approach
* `git status` to keep track of which files we've changed, and if we forgot to add anything to our current commit.
