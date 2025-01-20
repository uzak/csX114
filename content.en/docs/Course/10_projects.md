---
Title: 10 Projects
---
# Projects

A project is a temporary endeavor undertaken to create a unique product, service, or result.  Key characteristics:
* Clear objectives
* Defined scope
* Collaboration
* Time-bound

Most of the work in IT is done in the context of projects. Examples of successful projects:

* Open-source contributions (e.g., Linux, Python).
* Game development (e.g., Minecraft started as a side project).

## GIT

* Version control system for tracking changes in source code. 
* Collaboration tool for developers working on the same project.

Core Concepts of Git:

* Repository (Repo): A folder Git tracks.
* Commit: A snapshot of changes.
* Branch: A parallel version of your project.
* Merge: Combining branches.

Git is a distributed system therefore there is a server hosting the repository. From there you clone it to your computer and work in it. Changes are pushed to the remote repo.

To start a git repo first create an account on github, where your remote repo will be hosted. Add an ssh key so you can authenticate seamlessly for working with git. Then create a repo and clone it:

```
git clone git@github.com:uzak/csX114.git
git status
git add <file>
git commit -m "Initial commit"
git branch <branch-name>
git checkout <branch-name>
git checkout main
git merge <branch-name>
git push -u origin main
```

### Q&A


## Team Project
    * 2 - 3 members
    * Ideas:
        * hangman
        * tic-tac-toe