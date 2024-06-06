export ZPLUG_HOME=$HOME/.zplug

source $ZPLUG_HOME/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
# zplug "bigH/git-fuzzy", as:command, use:"bin/git-fuzzy"
# zplug "junegunn/fzf", use:"shell/*.zsh", defer:2
zplug "zdharma-continuum/fast-syntax-highlighting", as:plugin, defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin, defer:2
#zplug 'zsh-users/zsh-completions', depth:1 # more completions
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, at:main, as:theme

zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Code to setup autojump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u