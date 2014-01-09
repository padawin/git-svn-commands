# Git SVN commands

A couple of commands to help you in your daily use of git-svn

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

## git-svnbackup

Script to backup a local branch to prevent the loss of commits if the dcommit fails
and reset the branch's commits (happens to me sometimes because of the svn hook).

### Usage

```
git svnbackup local-<branch-name>
```

The branch <branch-name> will be backed up as <branch-name>-backup.
**This must be run before doing git svn dcommit.**

### Improvements

Remove args[1] to backup the current branch.

## git-svngetbackup

Script to retrieve a bunch of commits if a git svn dcommit failed and
reseted the branch.

### Usage

```
git svngetbackup local-<branchname>
```

Once the backup has been retrieve, you can edit the faulty commit with:
```
git rebase -i <branch-name>
```
Then backup your changes:
```
git svnbackup local-<branch-name>
```
And git svn dcommit again.

### Improvements

Remove args[1] to backup the current branch.

## Installation

Once every script have been set up (cf Setup sections), run setup.sh.

Because setup.sh try to create symlinks in /usr/local/bin, you will
need to run it as root or with sudo.
