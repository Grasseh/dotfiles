def gfr [] {
  git fetch
  git rebase
}

def gc [] {
  git add -A
  git commit
}

# Prune branches that are merged, as well as their remote
def gpr [] {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
  git remote prune origin
}
