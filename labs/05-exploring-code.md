# Lab 4: Exploring a Large Codebase
*October 8, 2026*

> Note: This activity was inspired by [Marc Jeanmougin's FOSS course](https://marc.jeanmougin.fr/3tc37/lab-1-codebases.html).

Being able to find stuff in a large codebase is a key skill for any software development role, but it's particularly important when joining a new project. In this lab, we'll look at ways to:
- Find keywords and filter by file
- Find when a change was made, and by whom
- Jump between function calls and implementation using a language server

As a fairly arbitrary example, I've chosen [Syncthing](https://syncthing.net/) to explore. It's a peer-to-peer file synchronization program that runs in the background synchronizing your files between different devices, without any intermediate cloud service.

It's written in Go, which you may not have used. That's okay! The techniques used in this lab are universal.

## Part 1: Who left that comment?
1. Find the source code repo for Syncthing and clone it to your local system.
2. Using [`git grep`](https://git-scm.com/docs/git-grep), find all the `TODO` items in the `.go` files and print out their line numbers. This should *not* include TODOs in third-party javascript libraries, or objects with member functions named `TODO`.
3. Choose one of the `TODO` items found. Who added it, and when? [`git blame`](https://git-scm.com/docs/git-blame) may come in handy for this.

## Part 2: What calls what?
1. Open the source code repo in your favourite editor or IDE. Things will be easier if you install the Go Language Server (e.g. the VS Code Go extension), but you can also get by with keyword searching. Note that the VS Code Go extension is not available on lab computers.

2. Syncthing is built into a binary and can be run by typing `syncthing` in the terminal. What function actually gets called when this happens? This is the main entrypoint into the program.

3. Read through the main entrypoint. It does several things; name three of them.

4. GUI applications usually run some kind of main "loop" where they sit and wait for user interaction. Where does Syncthing call the application "wait" function?

## Part 3: Random questions
Understanding the code often means asking a question and finding an answer yourself. Here's a few things to try:
1. Syncthing needs to interact with the operating system differently depending on the platform. What is the name of the variable that defines the detected operating system?

2. Pretend you're chasing down a bug that involves an IP address (such as 192.168.0.1 or 127.0.0.1). Can you find all occurrences of IP addresses in the `.go` files, excluding tests? (Hint: `grep` can find any digit using `[0-9]`).

3. Challenge yourself to find something else in the code!

## Deliverables
This time, send me an email with your answer to Part 2, question 3 (name three things that the main `syncthing` entrypoint function does).
