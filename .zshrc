# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

EDITOR="vim"
ZLE_RPROMPT_INDENT=0

source ~/Tools/Shell/iterm2_shell_integration.zsh
source ~/Tools/Shell/powerlevel10k/powerlevel10k.zsh-theme

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source ~/Tools/Shell/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh
source ~/Tools/Shell/zsh-z/zsh-z.plugin.zsh
source ~/Tools/Shell/omz-homebrew/omz-homebrew.plugin.zsh
source ~/Tools/Shell/ohmyzsh/lib/functions.zsh
source ~/Tools/Shell/ohmyzsh/lib/completion.zsh
source ~/Tools/Shell/ohmyzsh/lib/directories.zsh
source ~/Tools/Shell/ohmyzsh/lib/key-bindings.zsh
source ~/Tools/Shell/ohmyzsh/lib/misc.zsh
source ~/Tools/Shell/ohmyzsh/lib/termsupport.zsh
setopt auto_cd
setopt multios
setopt prompt_subst


# ALIASES
alias edit="webstorm"
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias dk="docker"
alias dkc="docker-compose"
alias ping="prettyping --nolegend"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias k="kubectl"
alias cc="DATASTORE_TYPE=kubernetes KUBECONFIG=~/.kube/config calicoctl"
alias tf="terraform"
alias wolnas="wakeonlan 88:d7:f6:d5:d2:c7 -i 192.168.1.7"

# from omz
unalias lsa
unalias l
unalias ll
unalias la

alias ls='eza --icons --group-directories-first -F'
alias l='eza --git-ignore --icons --group-directories-first -F -1'
alias ll='eza --icons --group-directories-first --git -lbhgaaF'
alias llm='eza --icons --git -lbhgaaF --sort=modified'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree'
alias tree='eza --tree'


export PATH="$PATH:/Users/niklv/Library/Application Support/JetBrains/Toolbox/scripts"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export CAPACITOR_ANDROID_STUDIO_PATH="$HOME/Applications/Android Studio.app/Contents/MacOS/studio"



export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# should be at bottom before zsh-history-substring-search
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Unbind OHMYZSH conflicting keybindings
# [Ctrl-RightArrow] - unbind
bindkey -r -M emacs '^[[1;5C'
bindkey -r -M viins '^[[1;5C'
bindkey -r -M vicmd '^[[1;5C'
# [Ctrl-LeftArrow] - unbind
bindkey -r -M emacs '^[[1;5D'
bindkey -r -M viins '^[[1;5D'
bindkey -r -M vicmd '^[[1;5D'

# [Alt-RightArrow] - move forward one word
bindkey -M emacs '^[^[[C' forward-word
bindkey -M viins '^[^[[C' forward-word
bindkey -M vicmd '^[^[[C' forward-word
# [Alt-LeftArrow] - move backward one word
bindkey -M emacs '^[^[[D' backward-word
bindkey -M viins '^[^[[D' backward-word
bindkey -M vicmd '^[^[[D' backward-word


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/niklv/Tools/Shell/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/niklv/Tools/Shell/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/niklv/Tools/Shell/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/niklv/Tools/Shell/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.11.3/terraform terraform
