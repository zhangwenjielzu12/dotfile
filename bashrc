# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export JAVA_HOME=/usr/lib/jvm/default-java

export PAGER="most"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PAGER="less"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zplus/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zplus/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zplus/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zplus/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias n="nvim"
alias v="vim"
alias mv='mv -v'
alias rm='rm -v'
alias rgcc="riscv64-linux-gnu-gcc"
source "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
