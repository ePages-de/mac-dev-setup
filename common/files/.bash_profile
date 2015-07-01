export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# https://github.com/clvv/fasd
eval "$(fasd --init auto)"

# display git branches in prompt
function prompt_command() {
    PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '
}
PROMPT_COMMAND=prompt_command

#export EPAGES_CONFIG=/Users/jfischer/dev/git/epagesj/subprojects/datasource/src/test/resources
export EPAGES_CONFIG=/Users/jfischer/EPAGES_CONFIG


export M2_HOME=/usr/local/opt/maven/libexec
export GRADLE_HOME=/usr/local/opt/gradle/libexec
export GRADLE_OPTS=-Dfile.encoding=utf-8

export LOLCOMMITS_DELAY=2

export APT_PROXY=http://192.168.59.4:8000

#To connect the Docker client to the Docker daemon, please set:
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/jfischer/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

