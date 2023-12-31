# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="custom"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Load wal theme
#(cat ~/.cache/wal/sequences &)

# Copy to clipboard cmd
function copy() {
	xclip -selection c
}

alias die="shutdown now"

# pull latest changes from git
function pull-config() {
	cw=$(pwd)

	echo "Pulling latest config files from git..."

	cd ~/.config
	git pull -q

	echo "Updating files outside of ~/.config..."

	# copy files that have to be elsewhere
	cp .zshrc ~/.zshrc -f
	mkdir -p ~/git # create git folder if it doesn't exist
	# Uncomment when not using gnome:
	#betterlockscreen -u ~/.config/lockscreen.png -q
	#sudo cp sleep.conf /etc/systemd/sleep.conf
	#sudo cp system.conf /etc/systemd/system.conf
	#sudo cp lightdm/lightdm.conf /etc/lightdm/lightdm.conf -f
	#sudo cp lightdm/lightdm-webkit2-greeter.conf /etc/lightdm/lightdm-webkit2-greeter.conf -f
	#sudo rm -rf /usr/share/lightdm-webkit/themes/theme
	#sudo cp lightdm/theme /usr/share/lightdm-webkit/themes/theme -r
	cp theme.zsh-theme ~/.oh-my-zsh/themes/af-magic.zsh-theme -f
	sudo cp ~/.config/win11 /usr/bin/win11

	# restore current working directory
	cd $cwd

	echo "Applying changes..."

	# reload zsh config
	source ~/.zshrc
	# uncomment if not using gdm
	#sudo systemctl restart systemd-logind

	cd $cw
}

# power menu
alias lock="betterlockscreen -l -q"
function hibernate() {
	lock

	systemctl hibernate
}

# Always run pacman as sudo as i keep forgetting
alias pacman="sudo pacman"

# github stuff
function gh() {
	# clone into ~/git
	if [ "$1" = "--clone" ]; then
		cwd=$(pwd)

		cd ~/git

		git clone $2

		cd $cwd

		return
	fi

	# else just cd into folder
	cd ~/git/$1
}

alias gh-clone="gh --clone"

function _gh() {
	if ((CURRENT == 2)); then
		compadd $(ls ~/git)
	fi

}

compdef _gh gh

# Homebrew
path+=('/home/linuxbrew/.linuxbrew/bin')

# Rust
path+=('$HOME/.cargo/bin')

# LaTex
path+=('/bin/tex')
path+=('/bin/python') # python for vscode latex compilation

export PATH

# Flutter

alias flutter="fvm flutter"
alias dart="fvm dart"

# Java home
export JAVA_HOME="/usr/lib/jvm/default"

# Open repo in vscode

function gh-code(){
	code ~/git/$1

	exit
}

function _gh-code(){
	compadd $(ls ~/git)
}

compdef _gh-code gh-code

# MinIO
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# pico-sdk
export PATH="/home/benjamin/git/pico-sdk:$PATH"
