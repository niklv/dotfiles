# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
DEFAULT_USER="niklvov"
EDITOR="vim"

ZLE_RPROMPT_INDENT=0

fpath=(/usr/local/share/zsh-completions $fpath)

alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias dk="docker"
alias dkc="docker-compose"
alias brw="brew upgrade"
alias ping="prettyping --nolegend"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias rn="react-native"
alias k="kubectl"
alias cc="DATASTORE_TYPE=kubernetes KUBECONFIG=~/.kube/config calicoctl"

source ~/antigen/antigen.zsh

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh lib/functions.zsh
antigen bundle robbyrussell/oh-my-zsh lib/completion.zsh
antigen bundle robbyrussell/oh-my-zsh lib/directories.zsh
antigen bundle robbyrussell/oh-my-zsh lib/history.zsh
antigen bundle robbyrussell/oh-my-zsh lib/key-bindings.zsh
antigen bundle robbyrussell/oh-my-zsh lib/misc.zsh
antigen bundle robbyrussell/oh-my-zsh lib/termsupport.zsh
antigen bundle robbyrussell/oh-my-zsh lib/theme-and-appearance.zsh

antigen theme romkatv/powerlevel10k
antigen apply

# z autocomplete
  . /usr/local/etc/profile.d/z.sh


autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/Cellar/terraform/0.11.8/bin/terraform terraform
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/niklvov/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/niklvov/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/niklvov/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/niklvov/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

