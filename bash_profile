## Ad Spark to PATH
export SPARK_HOME='/usr/local/spark'

## Shortcuts
alias ll="ls -lah"

## Include Git branch on CLI
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

## Remove Mac message on default zsh shell
export BASH_SILENCE_DEPRECATION_WARNING=1

## Config for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

# Config for poetry
export PATH="$HOME/.poetry/bin:$PATH"
