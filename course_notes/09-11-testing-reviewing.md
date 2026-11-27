# Testing and Reviewing Contributions

Code review helps open-source projects catch bugs, maintain quality, and make sure changes fit the project. Reviewers check whether the change works as intended, whether tests cover important cases, and whether the code is clear and maintainable.

## How reviewers test a change

A reviewer can fetch or check out the pull request's branch and follow the project's setup instructions. They may build or run the application, try the new behaviour, and check whether it works in realistic situations, including edge cases. They can also run relevant tests and, when practical, the project's full test suite. The README or contribution guide should explain the correct setup and test commands, which differ between projects.

Automated tests are important because they can catch regressions—problems where a new change breaks something that previously worked. For example, Anki's [PR #4826](https://github.com/ankitects/anki/pull/4826) fixed an FSRS scheduling issue where fuzz could make a review interval decrease from 4 days to 3 days. The contribution included a regression test for that case.

## Giving and responding to feedback

Reviewers should check functionality, tests, readability, design, and consistency with the project. Good comments are respectful, specific, and explain the concern. Instead of saying “This code is bad,” a reviewer could ask, “Could we test empty input? This may fail when the list is empty.” The author should respond, make changes when needed, and update the same pull request. If they disagree, they should explain why and discuss it.

## Pros and cons

Review can catch mistakes, improve code, and help contributors learn. However, it can take time, and unclear or overly critical comments may slow down progress. Keeping changes focused and feedback constructive helps.

My takeaway is that testing and reviewing are collaborative steps. Tests check behaviour, while review helps ensure the change is useful, understandable, and safe to merge.

### References
- [Google Engineering Practices: Code Review](https://google.github.io/eng-practices/review/)
- [Google: What to Look for in a Code Review](https://google.github.io/eng-practices/review/reviewer/looking-for.html)
- [Google: Writing Review Comments](https://google.github.io/eng-practices/review/reviewer/comments.html)
- [Anki PR #4826](https://github.com/ankitects/anki/pull/4826)
