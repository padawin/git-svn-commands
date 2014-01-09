# Git SVN commands

A couple of commands to help me in my daily use of git-svn

## git-svnbranch

Script to create a git branch from an existing svn branch.

### Setup

In the script, replace svn+ssh://username@svn.repo.host/path/to/branches/
by the actual path to your svn branches.

### Usage

```
git svnbranch <branch-name>
```

The working branch will be named local-<branch-name>.

<branch-name> must be a valid svn branch.

## Installation

Once every script have been set up (cf Setup sections), run setup.sh.

Because setup.sh try to create symlinks in /usr/local/bin, you will
need to run it as root or with sudo.
