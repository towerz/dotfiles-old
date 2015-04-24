function update {
  echo -en "Checking $(basename $(pwd))..."
  modified=$(git status -s | grep -v '??' | wc -l)
  [[ $modified -gt 0 ]] && git stash >/dev/null 2>&1
  out=`git pull --rebase 2>&1`
  if [[ $? -ne 0 ]]; then
      echo -e "\rChecking $(basename $(pwd))   ${MOVE_TO_COL}[${RED}FAILED${RESET}]"
      echo $out
      exit 1
  fi
  echo -e "\rChecking $(basename $(pwd))   ${MOVE_TO_COL}[${GREEN}SUCCESS${RESET}]"
  [[ $modified -gt 0 ]] && git stash pop >/dev/null 2>&1
}

function update_all {
  find . -name .git -type d | while read dir; do
    if [[ -n $dir ]]; then
      pushd "$(echo -n $dir | sed 's/\/.git//')" >/dev/null 2>&1
      update
      popd 2>&1 >/dev/null
    fi
  done
}

function current_git_project {
  dir=$(git rev-parse --show-toplevel 2>/dev/null)
  [ $? -eq 0 ] && [ $# -eq 1 ] && printf $1 $(basename $dir)
}

[[ -f $HOME/.git-completion.bash ]] && . $HOME/.git-completion.bash
[[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]] && . /usr/share/git-core/contrib/completion/git-prompt.sh

if [[ -d /usr/local/etc/bash_completion.d ]]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
  . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=1 #... untagged(*) and staged(+) changes
GIT_PS1_SHOWSTASHSTATE=1 #... if something is stashed($)
GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)
