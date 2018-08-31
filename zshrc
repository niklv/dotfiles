# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
DEFAULT_USER="niklvov"

alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias dk="docker"
alias dkm="docker-machine"
alias dkc="docker-compose"
alias brw="brew upgrade"
alias ping="prettyping --nolegend"
alias cat="bat"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"


POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_MODE='nerdfont-complete'
#plugins=(aws brew catimg  docker encode64 git httpie node nmap npm npx osx passi python redis-cli web-search z)

source ~/antigen/antigen.zsh
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh lib/completion.zsh
antigen bundle robbyrussell/oh-my-zsh lib/directories.zsh
antigen bundle robbyrussell/oh-my-zsh lib/history.zsh
antigen bundle robbyrussell/oh-my-zsh lib/termsupport.zsh
antigen bundle robbyrussell/oh-my-zsh lib/theme-and-appearance.zsh

antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

# z autocomplete
  . /usr/local/etc/profile.d/z.sh

