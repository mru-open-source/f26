# Lab 4: Writing good issues
*September 24, 2026*

One of the first types of contributions that you are likely to make is creating and reproducing bug reports or feature requests, collectively known as "issues" in GitHub/Codeberg/most places, and "work items" in Gitlab.

In this lab, we'll cover:
- When and how to write an issue
- Best practices
- Pitfalls to avoid
- Practice writing issues


## Background
Thanks to AI making it easier than ever to write a bunch of words and "contribute" to a project, the quality of contributions (including issue reports) is more critical than ever. Take, for example, [curl's experience](https://daniel.haxx.se/blog/2026/01/26/the-end-of-the-curl-bug-bounty/) with "AI slop" security reports. While this example focuses specifically on security-related issues, the problem persists in other bug reports, pull requests, and feature requests. The focus of this lab is on bug reports.

A well-written bug report is a useful thing, but a poorly written one adds to the [burden of open source maintainers](https://opensourcepledge.com/blog/burnout-in-open-source-a-structural-problem-we-can-fix-together/). Your goal is to make things easy to isolate and fix: Provide all the information necessary to reproduce the bug, but no more.

### Necessary components
Most well-run open source communities have issue templates to provide guidance. If you don't see one when you click "Create Issue", go back and double check the `CONTRIBUTING` document, or perhaps the website section on contributions — chances are, the information is out there somewhere. If not, however, the following should hopefully land you in the maintainers' "nice" book.

Assumption: you've found a bug in your favourite FOSS software and want to raise the issue.

1. **Search for the same issue**. If you find it mentioned in a closed PR or issue, great! There's probably a fix coming in the next release.
  
  If you find your bug in an open issue, you can comment to add that it is affecting you as well, but make sure to include your version and system information.
  
2. **Use a descriptive title**. Just saying "crash" isn't very useful; your title should be short but informative, like "crash opening UTF-16 encoded files".
  
  > It's entirely possible that your title doesn't accurately reflect the true source of the issue, and that's okay! Don't be offended if a maintainer modifies your title.
  
3. **Detailed description**. Clearly describe what the problem is. Some projects provide guidance like "what happened" and "what did you expect to happen".

4. **Describe how to reproduce the problem**. Provide step-by-step instructions so that developers can reproduce the bug. This can include screenshots or sample data, you're usually not limited to just text. However, you should aim to provide a [minimal reproducable example](https://stackoverflow.com/help/minimal-reproducible-example): for example, if the program crashed after 2 hours of playing audio, check if it also crashes when you play just the one track. The more isolated, the better. This is a tedious part of debugging that can take a while, so if you do it *for* the developers, the work will be appreciated (and maybe you'll even figure out the problem yourself and be well-positioned to fix it!).

5. **Include version info**. For example, `code --version` tells me the following:
   ```
   1.137.0
   645f29cc3176500b4b5762ba887cf2a7f0ffdf2c
   x64
   ```
   This might not be meaningful to the user, but probably useful to the dev.

6. **Include your system info**. Things behave in mysterious ways across platforms, and the more details you can provide the better. Attaching your entire `neofetch` output might be overkill, but saying "Fedora 44 with GNOME desktop" or "Windows 11 24H2" is useful information.

7. **Attach relevant logs**. If it's a crash, you can include the stack trace, but add it as a separate [gist](https://gist.github.com/), or hide it under an HTML `<details>` tag. Nobody wants to scroll through dozens of lines of log output to figure out what your problem is.

> As usual, I got a little long-winded. For more info and examples, check out [Section 6.4.5: Anatomy of a Good Bug Report](https://runestone.academy/ns/books/published/opensource/sec_issues_bugs.html?mode=browsing) in the Runestone text.

## Activity description
1. Go back to the [git-practice](https://github.com/mru-open-source/git-practice) repo and download the script in the `silly_example` directory. This is a fairly useless Python program that has at least one intentional bug, and likely more unintentional.

2. Run the `process.py` script and figure out what the bug is.

3. Create a [new issue](https://github.com/mru-open-source/git-practice/issues) in the git-practice repo, following the reporting guidelines described above.
  > [!NOTE]
  > This time, skip the duplicate check — you'll all be reporting more or less the same issue. Try not to read other issues before submitting your own, but feel free to go back and check afterwards to see different interpretations.

## Deliverables
As with previous labs, it doesn't need to be perfect to get credit. I'll check for your issue reports and as long as you didn't offload this task to AI, you'll get the lab completion mark.
