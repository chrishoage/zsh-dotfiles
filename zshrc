source ~/.zplug/zplug

zplug "b4b4r07/zplug"

zplug "plugins/git",  from:oh-my-zsh, if:"which git"
zplug "plugins/rsync",  from:oh-my-zsh
zplug "plugins/tmux",  from:oh-my-zsh, if:"which tmux"
zplug "plugins/sublime",  from:oh-my-zsh
zplug "plugins/common-aliases",  from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/brew-cask", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/debian", from:oh-my-zsh, if:"[[ $OSTYPE == *linux* ]]"
zplug "knu/z", of:z.sh, nice:10
zplug "rimraf/k", of:k.sh

zplug "~/.zsh", of:"*.zsh", from:local
zplug "~/", of:".extra", from:local, if:"[[ -f ~/.extra ]]"

zplug "zsh-users/zsh-completions", of:zsh-completions.plugin.zsh, nice: 17
zplug "zsh-users/zsh-syntax-highlighting", of:zsh-syntax-highlighting.zsh, nice:18
zplug "zsh-users/zsh-history-substring-search", of:zsh-history-substring-search.zsh, nice:19

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
APPEND_HISTORY="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

export PATH="$HOME/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Make vim the default editor
export EDITOR="vim"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
