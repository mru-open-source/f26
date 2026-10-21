# Navigating Large Codebases

Situation you've found a **bite-sized issue**, and now you want to solve it. Where do you even start?

- Lots of manual tracing, but also language server (LSP) and `grep`
- Worth knowing a bit of **regex** (practice: https://regex101.com/)

### Some basic regex

**Basic characters:**

 - A literal character (e.g. `A`, `x`, `4`,`?`)
 - Some of these need an escape character (`\`)

**Any of some type:**

| command | returns                                     |
| ------- | ------------------------------------------- |
| `\d`    | any digit                                   |
| `\w`    | any "word " character (`Aa-Zz`, `0-9`, `_`) |
| `\W`    | any non-word character                      |
| `\s`    | any whitespace                              |
| `\S`    | any non-whitespace                          |

### Multipliers and grouping stuff

| command | returns                      |
| ------- | ---------------------------- |
| `*`     | 0 or more                    |
| `+`     | 1 or more                    |
| `?`     | 0 or 1                       |
| `{#}`   | exactly `#`                  |
| `[ ]`   | any of the things in `[]`    |
| `(?:)`  | exact sequence after the `:` |
> *Example: write and expression to find Python class declarations, including `class X:` and `class X(Y)`:, but not other mentions of the word "class"*

### Boundaries

| command | returns                   |
| ------- | ------------------------- |
| `\b`    | A word                    |
| `\B`    | not                       |
| `^`     | start of a line or string |
| `$`     | end of a line or string   |

* unless inside `[]`, then the `^` character means `NOT`

### What about AI?

- AI does not ingest your entire codebase, it just "greps" it for you. Not the best for trying to understand code you didn't write.

- Try doing your own tracing rather than taking the LLM shortcut (but definitely use LSP features)

### Git tool: who and when

-  `git blame filenmae`: line-by-line listing of commits
-  `git log -L :funcname:filename`: history of specific function in file
- `git grep`: Like regular grep, but only searches tracked files and can search previous commits
