# Lab 9: Reviewing pull requests
*November 26, 2026*

Reviewing a pull request involves building and testing it locally. I already talked about some of the [things to look for](../lectures/09-code-reviews.md) in a good code review; this lab is focused on the mechanics of how to do it.

## Activity Description
- Check out someone's proposed changes locally
- Compare the changes to the target branch
- Build and test it (or in this case, just run the modified script)

## Steps
1. Go to the new PR on the [git-practice](https://github.com/mru-open-source/git-practice/pull/65) repo and make note of the PR number. 
   
2. On your local machine, update your copy so that it matches the current state of the `git-practice:main` branch. Remember to fetch and rebase onto changes from `upstream` if your local copy is tracking your fork.

3. `fetch` the PR changes as follows, replacing `$ID` with the PR number you noted in step 1:
   ```
   git fetch upstream pull/$ID/head
   ```
   This assumes that you are working with a clone of a fork. If you have cloned `git-practice` directly, replace the word `upstream` with `origin`.

4. To switch to the new code without creating a local branch, run:
   ```
   git checkout FETCH_HEAD
   ```
   which will drop you into `detatched HEAD` state.
   
5. You can now compare changes between the PR branch and the target (which might be named `main`, `master`, `dev`, or anything else really), replacing `$TARGET` with the actual target branch name:
   ```
   git diff $TARGET..HEAD
   ```
   This is a pretty barebones view of the changes, but it's sufficient for this example. Realistically, viewing the changes in an IDE, purpose-built diff tool, or even GitHub's interface is probably easier.

6. Run the modified code locally. Because this is a Python script, you don't need to build anything, just run the script and test out the new function. Does it do what it says it should do? If there is a linked issue, is the problem solved?
   > [!TIP]
   > If you are testing a project with a more extensive build system, you may need to clear a cache or delete build artifacts to trigger a clean rebuild.

7. Instead of actually commenting on the line-by-line changes or adding a comment on GitHub, write your "shadow review" offline. For larger PRs with multiple changed files, a common way to reference specific lines of code is `filename:lineno` syntax, e.g.:

	```
	process.py:47 This is certainly a choice.
	```
	

> Much of the above can be simplified by using tools like GitHub's [cli](https://cli.github.com/), but as usual, I think it's useful to know what's going on under the hood.

## Submit
If you still need credit for a lab, this is the last one! Send me an email with a screenshot of the diff displayed on your local machine, and one thing you would change.


