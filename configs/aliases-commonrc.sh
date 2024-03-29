# Common Aliases

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


  # Git
  alias g='git'

  # Branch (b)
  alias gb='git branch'
  alias gba='git branch --all --verbose'
  alias gbc='git checkout -b'

  alias gbd='git branch -d'
  alias gbd='git branch --delete'
  alias gbD='git branch --delete --force'
  alias gbl='git branch --verbose'
  alias gbL='git branch --all --verbose'
  alias gbm='git branch --move'
  alias gbM='git branch --move --force'
  alias gbr='git branch --move'
  alias gbR='git branch --move --force'
  alias gbs='git show-branch'
  alias gbS='git show-branch --all'
  alias gbv='git branch --verbose'
  alias gbV='git branch --verbose --verbose'
  alias gbx='git branch --delete'
  alias gbX='git branch --delete --force'

  # Commit (c)
  alias gc='git commit'
  alias gcm='git commit -m'
  alias gca='git commit -a'
  alias gc='git commit --verbose'
  alias gcS='git commit --verbose --gpg-sign'
  alias gca='git commit --verbose --all'
  alias gcaS='git commit --verbose --all --gpg-sign'
  alias gcm='git commit --message'
  alias gcmS='git commit --message --gpg-sign'
  alias gcam='git commit --all --message'
  alias gco='git checkout'
  alias gcob='git checkout -b'
  alias gcO='git checkout --patch'
  alias main='git checkout main'



  alias gcf='git commit --amend --reuse-message HEAD'
  alias gcfS='git commit --amend --reuse-message HEAD --gpg-sign'
  alias gcF='git commit --verbose --amend'
  alias gcFS='git commit --verbose --amend --gpg-sign'
  alias gcp='git cherry-pick --ff'
  alias gcP='git cherry-pick --no-commit'
  alias gcr='git revert'
  alias gcR='git reset "HEAD^"'
  alias gcs='git show'
  alias gcsS='git show --pretty=short --show-signature'
  alias gcl='git-commit-lost'
  alias gcy='git cherry --verbose --abbrev'
  alias gcY='git cherry --verbose'

  # Conflict (C)
  alias gCl='git --no-pager diff --name-only --diff-filter=U'
  alias gCa='git add $(gCl)'
  alias gCe='git mergetool $(gCl)'
  alias gCo='git checkout --ours --'
  alias gCO='gCo $(gCl)'
  alias gCt='git checkout --theirs --'
  alias gCT='gCt $(gCl)'

  # Data (d)
  alias gd='git ls-files'
  alias gdc='git ls-files --cached'
  alias gdx='git ls-files --deleted'
  alias gdm='git ls-files --modified'
  alias gdu='git ls-files --other --exclude-standard'
  alias gdk='git ls-files --killed'
  alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

  # Fetch (f)
  alias gf='git fetch'
  alias gfa='git fetch --all'
  alias gfc='git clone'
  alias gfcr='git clone --recurse-submodules'
  alias gfm='git pull'
  alias gfma='git pull --autostash'
  alias gfr='git pull --rebase'
  alias gfra='git pull --rebase --autostash'

  # Grep (g)
  alias gg='git grep'
  alias ggi='git grep --ignore-case'
  alias ggl='git grep --files-with-matches'
  alias ggL='git grep --files-without-matches'
  alias ggv='git grep --invert-match'
  alias ggw='git grep --word-regexp'

  # Index (i)
  alias ga='git add'
  alias gA='git add -A'
  alias gia='git add'
  alias giA='git add --patch'
  alias giu='git add --update'
  alias gid='git diff --no-ext-diff --cached'
  alias giD='git diff --no-ext-diff --cached --word-diff'
  alias gii='git update-index --assume-unchanged'
  alias giI='git update-index --no-assume-unchanged'
  alias gir='git reset'
  alias giR='git reset --patch'
  alias gix='git rm -r --cached'
  alias giX='git rm -r --force --cached'

  # Log (l)
  alias gl='git log'
  # alias gl='git log --topo-order --pretty=format:"$_git_log_medium_format"'
  alias gls='git log --topo-order --stat --pretty=format:"$_git_log_medium_format"'
  alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"$_git_log_medium_format"'
  alias gle='git log | devmoji --color --log'
  alias glo='git log --oneline --graph'
  alias glos='git log --topo-order --pretty=format:"$_git_log_oneline_format"'
  alias glg='git log --topo-order --graph --pretty=format:"$_git_log_oneline_format"'
  alias glb='git log --topo-order --pretty=format:"$_git_log_brief_format"'
  alias glc='git shortlog --summary --numbered'
  alias glS='git log --show-signature'

  # Merge (m)
  alias gm='git merge'
  alias gmC='git merge --no-commit'
  alias gmF='git merge --no-ff'
  alias gma='git merge --abort'
  alias gmt='git mergetool'

  # Push (p)
  alias gp='git push'
  alias gpf='git push --force-with-lease'
  alias gpF='git push --force'
  alias gpFt='git push --follow-tags'
  alias gpa='git push --all'
  alias gpA='git push --all && git push --tags'
  alias gpt='git push --tags'
  alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
  alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

  # Rebase (r)
  alias gr='git rebase'
  alias grom='git rebase origin/master'
  alias gra='git rebase --abort'
  alias grc='git rebase --continue'
  alias gri='git rebase --interactive'
  alias grs='git rebase --skip'

  # Remote (R)
  alias gR='git remote'
  alias gRl='git remote --verbose'
  alias gRa='git remote add'
  alias gRx='git remote rm'
  alias gRm='git remote rename'
  alias gRu='git remote update'
  alias gRp='git remote prune'
  alias gRs='git remote show'
  alias gRb='git-hub-browse'

 alias grh='git reset HEAD'
 alias grh1='git reset HEAD~1'

  # Stash (s)
  alias gs='git stash'
  alias gsa='git stash apply'
  alias gsx='git stash drop'
  alias gsX='git-stash-clear-interactive'
  alias gsl='git stash list'
  alias gsL='git-stash-dropped'
  alias gsd='git stash show --patch --stat'
  alias gsp='git stash pop'
  alias gsr='git-stash-recover'
  alias gss='git stash save --include-untracked'
  alias gsS='git stash save --patch --no-keep-index'
  alias gsw='git stash save --include-untracked --keep-index'

  # Submodule (S)
  alias gS='git submodule'
  alias gSa='git submodule add'
  alias gSf='git submodule foreach'
  alias gSi='git submodule init'
  alias gSI='git submodule update --init --recursive'
  alias gSl='git submodule status'
  alias gSm='git-submodule-move'
  alias gSs='git submodule sync'
  alias gSu='git submodule update --remote --recursive'
  alias gSx='git-submodule-remove'

  alias gsmc='git submodule foreach --recursive git checkout .'

  # Tag (t)
  alias gt='git tag'
  alias gtl='git tag --list'
  alias gts='git tag --sign'
  alias gtv='git verify-tag'

  # Working Copy (w)
  alias gs='git status'
  alias gws='git status --ignore-submodules=$_git_status_ignore_submodules --short'
  alias gwS='git status --ignore-submodules=$_git_status_ignore_submodules'
  alias gwd='git diff --no-ext-diff'
  alias gwD='git diff --no-ext-diff --word-diff'
  alias gwr='git reset --soft'
  alias gwR='git reset --hard'
  alias gwc='git clean --dry-run'
  alias gwC='git clean --force'
  alias gmv='git mv'
  alias grm='git rm'
  alias grmr='git rm -r'
  alias grmrf='git rm -r --force'

alias grt='cd "$(git rev-parse --show-toplevel)"'

alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/master'

alias gxn='git clean -dn'
alias gx='git clean -df'

alias gsha='git rev-parse HEAD | pbcopy'

alias ghci='gh run list -L 1'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:main"

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# File size
alias fs="stat -f \"%z bytes\""

# systemd
alias start='command systemctl start'
alias stop='command systemctl stop'
alias reload='command systemctl reload'
alias restart='command systemctl restart'
alias status='command systemctl status'
alias journal='command journalctl -f -n 100 -u'


# Uncomment the below if you want to be able to 'cd' into directories that are
# not just relative to the current location. For example, if the below was
# uncommented we could 'cd my_project' from anywhere if 'my_project' is in
# the 'repos' folder.
# CDPATH="~:~/repos"

# Configure the history to make it large and support multi-line commands.

PROMPT_COMMAND='history -a'          # Before we prompt, save the history.
HISTSIZE=10000                       # A large number of commands per session.
HISTFILESIZE=100000                  # A huge number of commands in the file.
# HISTCONTROL="ignorespace:ignoredup" # Ignore starting with space or duplicates?
# export HISTIGNORE="ls:history"     # Any commands we want to not record?
# HISTTIMEFORMAT='%F %T '            # Do we want a timestamp for commands?