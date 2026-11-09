# COMP 3700A

Assigned: Release Cycle

2026-11-04

Continuous Delivery/Deployment slide

| Pros | Cons |
| ---- | ---- |
| - Faster releases | - No human check, can release bugs |
| - Always have new features | - Breaking changes; most common for APIs; all of it can be roll back to previous version |
| - More end user testing | |

## Using CD
- If you have a bug it can still be detected, but with no human checking during the automated check, then it can be released bugs unless there was human intervention.

## Release cycle conventions
- Frequent projects are called nightly builds.
  - You're accepting the risks included with the pushed build (which may not be qualified or be officially part of the update).
  - Beta is the category where more end users are involved, more stable than alpha, and expect no more new features, just more refinements.
    - Usually have no translation (translation freeze (developers are not expected to change text)), because the translators are already busy.
- Typical workflow for desktop, mobile apps, not really web apps. The former two have longer cycles.

## Versioning conventions
- SemVer is one of the most popular versioning where each number has a significance.
  - Python being longstanding at version 3.
    - `print "hello"` -> `print("hello")` demonstrates incompatibility between breaking major version numbering from Python 2 to Python 3.
  - Minor versioning can be reverse compatible, but not necessarily the other way.
  - Pandas 2.3.3 -> 3.0.0 used as demonstration as to why they suddenly jumped, because they accumulated enough changes that it warranted a bump in major version.
- Calendar versioning
  - Ubuntu is an example of calendar versioning with a consistent schedule twice a year.
