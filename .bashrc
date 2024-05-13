alias py='python'
alias dircolors='gdircolors'
alias ls='gls --color=auto'
# ~/.zshrc

# test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
PATH="/opt/homebrew/Cellar/coreutils/9.4/libexec/gnubin:$PATH"
MANPATH="/opt/homebrew/Cellar/coreutils/9.4/libexec/gnuman:$MANPATH"

test -e ~/.dir_colors && \
   eval `dircolors -b ~/.dir_colors`

   # >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
eval "$(starship init bash)"