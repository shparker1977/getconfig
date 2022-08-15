export CLICOLOR=1
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Go paths
export GOPATH=$HOME/go
#export GOROOT="$(brew --prefix golang)/libexec"
# explicit directory because brew prefix takes forever
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:/usr/local/bin"

alias gr="cd ~/gitRepos"
alias ku="kubectl"
alias nu="nerdctl"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

export CFLAGS="-I/usr/local/opt/openssl@1.1/include"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"


alias ccw="~/Documents/Scripts/curCalWeek.zsh"
function set_virtualenv () {
  source ~/venvs/$1/bin/activate
}
alias senv=set_virtualenv

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
