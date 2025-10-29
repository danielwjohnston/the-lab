# Useful Git Commands

## Everyday Git

### Amend last commit message
```bash
git commit --amend -m "New message"
```

### Undo last commit (keep changes)
```bash
git reset --soft HEAD~1
```

### Undo last commit (discard changes)
```bash
git reset --hard HEAD~1
```

### View git history with graph
```bash
git log --graph --oneline --all --decorate
```

### Cherry-pick a commit
```bash
git cherry-pick <commit-hash>
```

### Create and switch to new branch
```bash
git checkout -b feature-name
# or
git switch -c feature-name
```

### Delete local branch
```bash
git branch -d branch-name
```

### Delete remote branch
```bash
git push origin --delete branch-name
```

## Advanced Git

### Interactive rebase
```bash
git rebase -i HEAD~3
```

### Find when a bug was introduced
```bash
git bisect start
git bisect bad HEAD
git bisect good <known-good-commit>
```

### Show what changed in a specific commit
```bash
git show <commit-hash>
```

### Stash with message
```bash
git stash save "Work in progress on feature X"
```

### Apply specific stash
```bash
git stash apply stash@{2}
```

### Clean untracked files (dry run first!)
```bash
git clean -n
git clean -f
```

## Useful Aliases

Add these to your `~/.gitconfig`:

```ini
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = log --graph --oneline --all --decorate
    amend = commit --amend --no-edit
```
