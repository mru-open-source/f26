# Part 2: Your first contribution(s)

Writeup Due Nov 6, 2026

Suggested PR submission deadline: Oct 30, 2026

- [Objective](#objective)
- [Tasks](#tasks)
  - [Communication](#communication)
  - [Forking and building](#forking-and-building)
  - [Reproducing issues](#reproducing-issues)
  - [Fixing an issue](#fixing-an-issue)
- [Reporting](#reporting)
- [Presentation](#presentation)
- [Rubric](#rubric)

## Objective

Time to stop lurking and start contributing!

At this stage, you should have a pretty good idea of which community you want to commit to for the rest of the semester[^1]. The goal of this part of the project is to actually start contributing, including:

- Introducing yourself
- Forking and building the source code
- Reproducing issues
- Finding a bite-sized issue to fix
- Submitting a pull request

[^1]: This is probably one that you evaluated in part 1, but if you found a new one from the presentations or elsewhere that looks better, you're welcome to switch.

> [!TIP]
> **Start early**! This is not the kind of project that you can leave until the last minute. Communication channels are slow, maintainers are busy, and code reviews take time. Aim to submit your PR **at least 1 week** before the project due date to allow time for back-and-forth.

## Tasks

The majority of your time on this part of the project will be spent actually engaging with your chosen community — the actual reporting work should be fairly minimal.

### Communication

Open source software is built on trust. Before submitting a PR, you should spend time establishing yourself as a trustworthy contributor by regularly engaging in the communication channels, such as:

- Staying up-to-date with the state of the project
- Introducing yourself on a chat, forum, or mailing list
- Answering questions from other users

I recommend spending a few minutes every day checking in on communication channels and seeing what's new in the project. The exact nature of your communication will vary depending on the project; I'm just looking for some kind of reasonable effort made to engage in the community.

If you're nervous about making a mistake in communication, that's normal! Putting yourself out there is one of the scariest parts of FOSS. Check out [how to ask questions the smart way](https://apps.courses.opencraft.com/learning/course/course-v1:MOOC-FLOSS+101+2021_1/block-v1:MOOC-FLOSS+101+2021_1+type@sequential+block@chap-05-seq-02/block-v1:MOOC-FLOSS+101+2021_1+type@vertical+block@chap-05-seq-02-ver-02) for some tips and mistakes to look out for.

### Forking and building

Before reproducing or fixing an issue, you'll need your own copy of the source code. Forking is usually fairly straightforward, but building your copy locally can be painful, depending on the tech stack, the state of the documentation, and your OS.

Create a fork in GitHub/GitLab/Codeberg and clone it to your system. To make sure you are always working on up-to-date code, add a remote to connect your *local* repo to upstream:

```bash
git remote add upstream <original-project-url>
```

Then, you can fetch changes from upstream and rebase your local changes onto upstream's `main` branch (or `master`, or `dev`, or whatever it's called):

```bash
git fetch upstream
git rebase upstream/main
```

It's a good idea to do this regularly, ideally before every work session.

Once you've got a copy of the code, try to build it. This may be straightforward, or it may involve installing a series of poorly-documented dependencies. If the build instructions don't work for your system, keep track of why and what you need to do differently — this could be a great place to start contributing!

### Finding and reproducing bugs

The first step in fixing a problem is making sure that it's a real problem originating from the source code and not something wonky with an individual user's configuration. Look through open issues in your project's bug tracker and try to find something that needs reproducing. There may even be a handy label such as "needs reproducing", "unconfirmed", "needs investigation", etc.

At this stage, don't worry too much about what it would take to fix the issue, just focus on trying to trigger the same problem on your system. If the original reporter didn't provide a minimal reproducible example, can you create one?

If you can reproduce the problem, great! This is a useful finding. Add a comment on the issue with your system details and version info to provide more information.

If you could not reproduce the problem, this is still useful information, but you might need to be a bit more careful. Double check that you followed the reporter's steps exactly, or if there is ambiguity, try a few different things. If you're confident that it's not a problem for you, you can again add a comment on the issue with info about your system and version.

### Your first pull/merge request

For your first actual contribution to the source code, aim for a small, easy-to-review change. Something with less than 10 lines of changes would be ideal. Best case scenario is if you can link this to an open issue (perhaps one that you reproduced); second best would be a problem that you encountered during your setup phase.

Depending on how your community does things, you can either jump in and open a PR, or you might need to comment on the issue and propose a fix. Either way, you're likely to need to do the following to open the PR:
- Fetch changes from upstream and rebase onto `upstream/main`
- Create a new branch in your local repo
- Make your changes and test them thoroughly to be sure they fix the issue
- Commit changes to your branch and squash to a single commit (at this stage, your PR should not be complex enough to need multiple)
- Push your changes to **your fork**
- Open a pull request (or merge request, for GitLab folks), targeting your project's `main`/`master` branch
- Follow your project's PR template. If none exists, succinctly describe

## Reporting

The majority of the work in this part of the project should be the "things" that you did, not the report write-up. However, I won't know about all the stuff you did until you tell me. In your report, **write a paragraph and provide evidence** describing how you accomplished each of the four tasks listed above.

### One paragraph per task

Your paragraphs should be succinct and self-contained; I should not have to click on every link to get a sense of what you did. Your evidence can include screenshots as well as links to issues and pull requests.

Example for communication:

> I joined the main chat and introduced myself, then asked a question about how to approach issue \#1234. I checked in with the chat daily and kept an eye on new issues and PRs. I found that it wasn't super active until Oct 17, when a new release was planned and there was a lot of discussion about CI stuff and cross-platform builds.
>
> <screenshot of introduction in chat>

### Conclusion

In addition to descriptions of the four tasks, write a concluding paragraph describing any challenges you encountered, and what kind of larger contribution you hope to make in the final part of the project.

## Presentation

As with part 1, prepare a presentation to share your experiences. Your presentation should answer the following questions:

- What project did you choose?
- Where did you start?
- What was the most challenging aspect?
- What do you intend to tackle next?

Your presentation should be a maximum of **8 minutes**, and should be accompanied by appropriate visuals.

## Rubric

As with part 1, each task, as well as the conclusion, will be evaluated on the following 4-point scale (for a total of 20):

| Score | Description                                                            |
| ----- | ---------------------------------------------------------------------- |
| 4     | Excellent — thoughtful and creative without any errors or omissions    |
| 3     | Pretty good, but with minor errors or omissions                        |
| 2     | Mostly complete, but with major errors or omissions, lacking in detail |
| 1     | A minimal effort was made, incomplete or incorrect                     |
| 0     | No effort was made, plagiarized, or obviously AI                       |

The presentation will be scored with an additional five points on a simplified scale:

| Score | Description                                           |
| ----- | ----------------------------------------------------- |
| 0     | Did not give presentation                             |
| 2.5   | Clearly low-effort — missing visuals, very short, etc |
| 5     | Complete presentation                                 |

This follows the same logic as part 1, where the presentation makes up 20\% of the grade.

In addition, a 10\% bonus (2.5 / 25) will be applied if your PR is accepted and merged by the deadline.
