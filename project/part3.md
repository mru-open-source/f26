
# Part 3: Substantial contribution

Writeup Due December 4 at 5 pm. This is a Friday — realistically I will not be marking things until the following Monday, but I also won't be responding to email requests.

Suggested PR submission deadline: November 27.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Objective](#objective)
- [Tasks](#tasks)
  - [Communicate](#communicate)
  - [Find a bigger task](#find-a-bigger-task)
  - [Shadow review](#shadow-review)
  - [Contribute](#contribute)
- [Reporting](#reporting)
  - [One paragraph per task](#one-paragraph-per-task)
  - [Conclusion](#conclusion)
- [Presentation](#presentation)
- [Rubric](#rubric)

<!-- markdown-toc end -->

## Objective
At this point, you've hopefully found an interesting and friendly project and have started to understand the codebase. You also have started to build some trust with your engagement and smaller contribution from part 2.

## Tasks
Once more, the actual things to do should be the bulk of the work, not the reporting.

### Communicate
Continue to participate in your projects' communication channels. If you get a chance to join a voice call, do it! It's amazing how much easier it is to understand each other when you've spoken directly.

### Find a bigger task
In [part 2](part2.md), I asked you to limit the scope of your contribution in order to build trust with the project and be respectful of maintainers' time. Now, it's time to find something a bit bigger to chew on, or multiple smaller things.

For this part of the project, feel free to choose either a more complex bug, or a feature request. New contributors often join a project because they want to add a specific feature, and that's often okay as well — as usual, your project's guidelines take precedence over these instructions. Whatever you pick, it should be something that takes hours (not minutes or days) to solve.

If you're having trouble finding an appropriate issue, keep track of what you've tried and document it in your reports. It's all part of the learning experience, even if it feels like you're spinnning your wheels and going nowhere.

Finally, if you've chosen a project that is more focused on documentation or asset creation than on actual programming, your "bigger task" might be something like creating an entire article, set of assets, tutorial video, etc. I'm assuming that most of you are working on code, but if you'd like to do something else, let me know and we can figure out how to make it fit these requirements.

### Shadow review
Chances are, you haven't built up the trust required to perform code reviews within your project. However, I'd still like you to experience this side of the development process in order to gain an appreciation for the amount of time and effort that (volunteer) maintainers put in to these things.

To conduct your "shadow review":
- Read a few completed (merged and closed) pull requests to get a sense of how your project operates.
- Pick a recent open[^1] pull request that you can understand, but that isn't trivial or documentation-only. A good choice is something that modifies a part of the code you have been working with.
- Pretend that you have been assigned to review it! Do the following, based on [Google's reviewer guidelines](https://google.github.io/eng-practices/review/reviewer/):
  - Check out the branch and build it
  - Test out the new feature, or try to trigger the bug that is being fixed
  - Does it do what it was supposed to do? If there is a linked issue report, read that to double check.
  - If the project has a test suite, build and run it to ensure it still passes. Should new test cases be added for this change? If so, were they included with the PR?
  - Read through the code changes (the "diff"). You may need to read additional context to understand it. Is it fairly readable and concise? Does it fit with the style of the existing code? Is there excess complexity or redundancy? 
  
Overall, try to make a decision on whether the change makes sense and can be accepted into the code base.

[^1]: It's okay if the PR gets resolved while you work on this assignment, just try not to read what the actual reviewer writes to avoid getting influenced.


### Contribute
Now that you've got a sense of what it feels like on the other end of things, you're in a better position to make a solid contribution! Following the guidelines of your project, submit a pull request with your solution to the "bigger task" that you identified earlier.

This is likely to be where you spend most of your time. You'll need to reproduce and isolate the issue (if it's a bug), or figure out where to add the new feature in the codebase, then do the actual work of designing and implementing a solution, along with any necessary tests and documentation.

## Reporting
As with [part 2](part2.md), most of the effort should be on doing the work. The report requirement is just communicating to me what you did so that I can give you credit.

### One paragraph per task
Write a paragraph and provide evidence (screenshots, links, etc) describing how you accomplished each task. I should be able to get a sense of what you did without necessarily clicking on all the links.

If there is work that you did that didn't lead to an end product, that's okay! Tell me about it. The main outcome for this class is the learning experience, and part of that is exploring dead ends.

### Conclusion

In addition to descriptions of the four tasks, write a concluding paragraph describing the key lessons learned in doing this project, and anything that you wish had gone differently.

## Presentation

As with parts 1 and 2, prepare a presentation to share your experiences. Your presentation should **tell your story** and address the following questions:

- What project did you end up working on?
- What task did you choose, and how did you approach solving it?
- What was the most challenging aspect?
- What was the most rewarding or exciting moment?

Your presentation should be a maximum of **8 minutes**, and should be accompanied by appropriate visuals.

## Rubric

Each task, as well as the conclusion, will be evaluated on the following 4-point scale (for a total of 20):

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

This follows the same logic as parts 1 and 2, where the presentation makes up 20\% of the grade.

In addition, a 10\% bonus (2.5 / 25) will be applied if your PR is accepted and merged by the deadline.
