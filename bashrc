# General

#
# prompt string made the nice way
#
prompt_command() {
	## hostname
	local host=${HOSTNAME%.local}

	## colors
	local reset='\[\033[00m\]'
	local grey='\[\033[01;30m\]'
	local red='\[\033[01;31m\]'
	local green='\[\033[01;32m\]'
	local yellow='\[\033[01;33m\]'
	local blue='\[\033[01;34m\]'
	local pink='\[\033[01;35m\]'
	local cyan='\[\033[00;36m\]'

	## nifty current directory
	local pwd=${PWD/$HOME/\~}
	if [[ $pwd = /home/* ]]; then
		pwd=\~${pwd#/home/}
	fi

	## git/svn status, ruby rvm gemset, python virtualenv
	local git=
	local svn=
	local rgs=
	local pve=
	local dir=${PWD}

	if [[ ${dir} != ${HOME} ]]; then
		while [[ ! -d ${dir}/.git && ${dir} != '/' && -n ${dir} ]]; do
			dir=${dir%/*}
		done

		if [[ -n ${dir} && -z ${BASHRC_DISABLE_GIT} ]]; then
			local branch=`git symbolic-ref HEAD 2>/dev/null`
			branch=${branch#refs/heads/}
			if [[ -n ${branch} ]]; then
				local status=`git status --porcelain 2>/dev/null`
				if [[ -n ${status} ]]; then
					git="${reset}(${grey}git:${red}${branch}${reset})"
				else
					git="${reset}(${grey}git:${green}${branch}${reset})"
				fi
			fi
		fi

		if [[ -z ${git} && -z ${BASHRC_DISABLE_SVN} ]]; then
			dir=${PWD}
			while [[ ! -d ${dir}/.svn && ${dir} != '/' && -n ${dir} ]]; do
				dir=${dir%/*}
			done

			if [[ -n ${dir} ]]; then
				local revision=`svn info 2>/dev/null|grep Revision:|cut -d' ' -f2`
				if [[ -n ${revision} ]]; then
					#svn="${reset}(${grey}svn:${blue}r${revision}${reset})"
					local status=`svn status 2>/dev/null|head -1`
					if [[ -n ${status} ]]; then
						svn="${reset}(${grey}svn:${red}r${revision}${reset})"
					else
						svn="${reset}(${grey}svn:${green}r${revision}${reset})"
					fi
				fi
			fi
		fi

		if [[ -z ${BASHRC_DISABLE_RVM_GEMSET} && -n ${GEM_HOME} && ${GEM_HOME} = *${rvm_gemset_separator:-'@'}* ]]; then
			rgs="${reset}{${grey}env:${cyan}${GEM_HOME##*@}${reset}}"
		fi

		if [[ -z ${BASHRC_DISABLE_VIRTUALENV} && -n ${VIRTUAL_ENV} ]]; then
			pve="${reset}{${grey}env:${cyan}${VIRTUAL_ENV##*/}${reset}}"
		fi
	fi

	PS1="${reset}[${green}${USER}${reset}@${blue}${host}${reset}(${yellow}${pwd}${git}${svn}${rgs}${pve}${reset})]\\$ "
}

PS1="\u@\h:\w\\$ "
PROMPT_COMMAND=prompt_command
if [[ $OSTYPE = darwin* ]]; then
    export CLICOLOR=1
    export LSCOLORS=dxfxcxdxbxegedabagacad
    alias ls='ls -CFG'
    alias vim='mvim'
else
    alias ls='ls --color=auto'
fi

alias la='ls -hAlFiG'
alias li='ls -hAlFiG'
alias ll="ls -logh"
alias rm="rm -i"
alias mv="mv -i"
alias grep="grep -i"
alias op="open"
alias cl="clear"
alias cll="clear; ll"
alias ..="cd .."
alias ...='cd ../../'
alias ....='cd ../../../'
alias -- -='cd -'

# Applications
alias f="open . -a finder"

# Directories
alias dsk="cd ~/Desktop/"
alias doc="cd ~/Documents/"
alias dw="cd ~/Downloads/"


mkcd () { mkdir -p "$@" && cd "$@"; }

if [[ $OSTYPE = darwin* ]]; then
    export EDITOR=mvim
    export PATH="/usr/local/bin:$PATH"
    export PATH="$PATH:$HOME/Downloads/MacVim-snapshot-72"
    export PATH="$PATH:$HOME/Scripts"
    export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"

    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
    source $(brew --prefix nvm)/nvm.sh
    source $(brew --prefix php-version)/php-version.sh && php-version 5
else
    export EDITOR=mvim
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# NVM
if [ -s ~/.nvm/nvm.sh ]; then
	NVM_DIR=~/.nvm
	source ~/.nvm/nvm.sh
fi
