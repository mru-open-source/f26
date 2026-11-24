---
title: "10. Controversies in Open Source"
date: 2026-11-25
marp: true
theme: marp-mru
paginate: true
---

<!--
_class: title_slide
_paginate: skip
-->

# <!--fit-->COMP 3700A: Contributing to Open Source

### <!--fit-->Controversies in Open Source

Charlotte Curtis
November 25, 2026

---

## Housekeeping
- Do we have [notetakers](https://github.com/mru-open-source/f26/issues/) for today?
  - Who still needs to do complete a review?
- Class participation: self-assessment on D2L
- How are the more substantial contributions coming along?

---

## Free and Open Source Software is Political
- 1970s: Bill Gates writes an [open letter](https://upload.wikimedia.org/wikipedia/commons/f/f9/Bill_Gates_Letter_to_Hobbyists_ocr.pdf) complaining about software theft
- 1980s: RMS founds the [GNU project](https://www.gnu.org) in retaliation against proprietary software
- 1990s: ESR founds the [Open Source Initiative](https://opensource.org) to "build bridges" between companies and free software enthusiasts
- 2000s: [Wikipedia](https://en.wikipedia.org/wiki/History_of_Wikipedia#Controversies) launches, controversies ensue, companies begin [embrace open source](https://www.economist.com/business/2009/05/28/born-free) in response to dot-com bubble and 2008 recession
- 2010s: Google Chrome (partially [open source](https://opensource.google/)) overtakes both Firefox and Internet Explorer, Microsoft [aquires GitHub](https://news.microsoft.com/announcement/microsoft-acquires-github/), and open source otherwise becomes [mainstream](https://www.linuxfoundation.org/press/press-release/corporate-open-source-programs-are-on-the-rise-as-shared-software-development-becomes-mainstream-for-businesses)

---

## Codes of Conduct
- As FOSS grew in popularity, the need for [Codes of Conduct](https://www.contributor-covenant.org/) became apparent
- Many of the "famous people of FOSS" are also famously public about some questionable values:
  - [RMS](https://rms-open-letter.github.io/) has been removed and re-instated from various leadership roles
  - [ESR](https://www.i-programmer.info/news/136-open-source/13535-co-founder-of-osi-banned-from-.html) was banned from his own foundation's mailing lists
  - [Linus Torvalds](https://gizmodo.com/linux-founder-takes-some-time-off-to-learn-how-to-stop-1829105667) temporarily stepped away from the Linux foundation
- It's hard to build an open community based on trust and shared values!

---

## Hacktivism: `node-ipc` case study
- In 2022, the maintainer of a popular node library added a dependency called [`peacenotwar`](https://www.npmjs.com/package/peacenotwar)
- Everyone who visited an updated website got a new text file on their desktops called `WITH-LOVE-FROM-AMERICA.txt` with a message about peace
- Some evidence that some versions of `node-ipc` would also overwrite all files for users visiting from Russia with heart emojis
- Maintainer claimed the

> Sources: [bleeping computer](https://www.bleepingcomputer.com/news/security/big-sabotage-famous-npm-package-deletes-files-to-protest-ukraine-war/), [snyk](https://snyk.io/blog/peacenotwar-malicious-npm-node-ipc-package-vulnerability/), [ars technica](https://arstechnica.com/information-technology/2022/03/sabotage-code-added-to-popular-npm-package-wiped-files-in-russia-and-belarus/)

---

## Bad Actors: `xz` utils case study

---

## 2020s: The rise of LLMS
