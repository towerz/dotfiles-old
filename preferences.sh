export TERM=xterm-color

export CLICOLOR=1
export LSCOLORS="CxgxfxDxbxegedabagacad"

if [ -f "$HOME/workspace/misc/powerline-shell/powerline-shell.py" ]; then
    function _update_ps1() {
       export PS1="$($HOME/workspace/misc/powerline-shell/powerline-shell.py --shell bash --mode patched --cwd-max-depth 4 $? 2> /dev/null)\n"
    }

    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
else
    PS1="${GREEN}[\u \W]${BLUE}\$(current_git_project '[%s]')${RED}\$(__git_ps1 '[%s]')${GREEN}\$${RESET}\n"
fi

export SASS_LIBSASS_PATH="$HOME/lib/libsass"
